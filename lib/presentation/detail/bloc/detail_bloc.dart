import 'package:bloc/bloc.dart'; // ignore: depend_on_referenced_packages
import 'package:equatable/equatable.dart';

import '../../../core/data_state.dart';
import '../../../data/models/requests/get_popular_movie_list_request.dart';
import '../../../domain/entities/movie.dart';
import '../../../domain/usecases/get_popular_movie_list_usecase.dart';

part 'detail_event.dart';
part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc({
    required this.getPopularMovieListUsecase,
  }) : super(const DetailInitState()) {
    on<DetailFetchListEvent>(_fetchDetail);
  }

  final GetPopularMovieListUsecase getPopularMovieListUsecase;

  _fetchDetail(DetailEvent event, Emitter<DetailState> emit) async {
    final response = await getPopularMovieListUsecase.call(
      GetPopularMovieListRequest(
        apiKey: '7c89f0483dfba44fb752ae6d50393fd0',
        language: 'ko-KR',
        region: 'KR',
      ),
    );

    if (response is Success && response.data != null) {
      //emit(DetailFetchingSuccessState(data: Movie()));
    } else {
      emit(DetailFetchingFailedState(message: response.error?.message));
    }
  }
}
