import 'package:bloc/bloc.dart'; // ignore: depend_on_referenced_packages
import 'package:equatable/equatable.dart';
import 'package:flutter_sample/core/data_state.dart';
import 'package:flutter_sample/data/models/requests/get_popular_movie_list_request.dart';
import 'package:flutter_sample/domain/usecases/get_popular_movie_list_usecase.dart';

import '../../../domain/entities/movie.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required this.getPopularMovieListUsecase,
  }) : super(const HomeInitState()) {
    on<HomeFetchListEvent>(_fetchingMovieList);
  }

  final GetPopularMovieListUsecase getPopularMovieListUsecase;

  _fetchingMovieList(HomeEvent event, Emitter<HomeState> emit) async {
    final response = await getPopularMovieListUsecase.call(
      GetPopularMovieListRequest(
        apiKey: '7c89f0483dfba44fb752ae6d50393fd0',
        language: 'ko-KR',
        region: 'KR',
      ),
    );

    if (response is Success && response.data != null) {
      emit(HomeFetchingSuccessState(list: response.data!.results));
    } else {
      emit(HomeFetchingFailedState(message: response.error?.message));
    }
  }
}
