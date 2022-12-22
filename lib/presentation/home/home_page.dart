import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample/domain/usecases/get_popular_movie_list_usecase.dart';
import 'package:flutter_sample/presentation/home/home_fail.dart';
import 'package:flutter_sample/presentation/home/item_movie.dart';
import 'package:get_it/get_it.dart';

import 'bloc/home_bloc.dart';
import 'home_loading.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final useCase = GetIt.instance.get<GetPopularMovieListUsecase>();
    final homeBloc = HomeBloc(getPopularMovieListUsecase: useCase);

    return BlocProvider(
      create: (context) => homeBloc..add(HomeFetchListEvent()),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'flutter sample',
            ),
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is HomeFetchingSuccessState) {
                  return ListView.builder(
                    itemBuilder: (context, index) =>
                        ItemMovie(item: state.list[index]),
                  );
                } else if (state is HomeFetchingFailedState) {
                  return const HomeFail();
                } else {
                  return const HomeLoading();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
