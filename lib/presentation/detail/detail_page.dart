import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sample/domain/usecases/get_movie_detail_usecase.dart';
import 'package:flutter_sample/presentation/detail/bloc/detail_bloc.dart';
import 'package:get_it/get_it.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    final useCase = GetIt.instance.get<GetMovieDetailUsecase>();
    final detailBloc = DetailBloc(getMovieDetailUsecase: useCase);

    return BlocProvider(
      create: (context) => detailBloc..add(FetchDetail(id: id)),
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<DetailBloc, DetailState>(
            builder: (context, state) {
              if (state is DetailFetchingSuccessState) {
                return Column(
                  children: [
                    ExtendedImage.network(
                      state.data.backDropUrl,
                      fit: BoxFit.fitWidth,
                    ),
                    Text(state.data.title),
                    const SizedBox(height: 16),
                    Text(state.data.overview),
                    const SizedBox(height: 16),
                    Text(state.data.releaseDate),
                  ],
                );
              } else if (state is DetailFetchingFailedState) {
                return const Center(
                  child: Text('fetching fail'),
                );
              } else {
                return const Center(
                  child: Text('fetching...'),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
