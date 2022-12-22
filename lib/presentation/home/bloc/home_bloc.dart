import 'package:bloc/bloc.dart'; // ignore: depend_on_referenced_packages
import 'package:equatable/equatable.dart';
import 'package:flutter_sample/core/data_state.dart';
import 'package:flutter_sample/data/models/requests/get_popular_movie_list_request.dart';
import 'package:flutter_sample/domain/usecases/get_popular_movie_list_usecase.dart';
import 'package:flutter_sample/presentation/utils/list_util.dart';

import '../../../domain/entities/movie.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required this.getPopularMovieListUsecase,
  }) : super(const HomeListState()) {
    on<HomeFetchListEvent>(_fetchingMovieList);
  }

  final GetPopularMovieListUsecase getPopularMovieListUsecase;
  int page = 1;

  _fetchingMovieList(HomeEvent event, Emitter<HomeState> emit) async {
    HomeListState newState;

    if (state is HomeListState) {
      newState = state as HomeListState;
    } else {
      newState = const HomeListState();
    }

    if (newState.hasReachedMax || newState.isLoading) return;

    emit(newState.copyWith(status: ListStatus.loading));

    final response = await getPopularMovieListUsecase.call(
      GetPopularMovieListRequest(
        apiKey: '7c89f0483dfba44fb752ae6d50393fd0',
        language: 'ko-KR',
        region: 'KR',
        page: page,
      ),
    );

    if (response is Success && response.data != null) {
      final data = response.data!;
      if (page == 1 && data.results.isEmpty) {
        emit(newState.copyWith(status: ListStatus.empty));
      } else {
        page++;
        emit(newState.copyWith(
          status: ListStatus.success,
          items: List.of(newState.items)..addAll(data.results),
        ));
      }
    } else {
      emit(newState.copyWith(status: ListStatus.failure));
    }
  }
}
