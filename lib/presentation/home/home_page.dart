import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample/domain/usecases/get_popular_movie_list_usecase.dart';
import 'package:flutter_sample/presentation/home/home_empty.dart';
import 'package:flutter_sample/presentation/home/home_fail.dart';
import 'package:flutter_sample/presentation/home/item_movie.dart';
import 'package:flutter_sample/presentation/utils/list_util.dart';
import 'package:get_it/get_it.dart';

import 'bloc/home_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static String path = '/';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController? _scrollController;
  VoidCallback? _scrollListener;

  @override
  Widget build(BuildContext context) {
    _scrollController ??= PrimaryScrollController.of(context);

    final useCase = GetIt.instance.get<GetPopularMovieListUsecase>();
    final homeBloc = HomeBloc(getPopularMovieListUsecase: useCase);

    return BlocProvider(
      create: (context) => homeBloc..add(HomeFetchListEvent()),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const Text(
                'flutter sample',
              ),
              Expanded(
                child: BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    if (state is HomeListState) {
                      switch (state.status) {
                        case ListStatus.initial:
                          _scrollListener = () {
                            if (isBottom(_scrollController)) {
                              homeBloc.add(HomeFetchListEvent());
                            }
                          };
                          _scrollController?.addListener(_scrollListener!);
                          break;
                        case ListStatus.empty:
                          return const HomeEmpty();
                        case ListStatus.failure:
                          return const HomeFail();
                        default:
                          break;
                      }

                      return ListView.builder(
                        itemCount: state.items.length,
                        itemBuilder: (context, index) => ItemMovie(
                          item: state.items[index],
                        ),
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
