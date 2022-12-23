import 'package:bloc/bloc.dart'; // ignore: depend_on_referenced_packages
import 'package:equatable/equatable.dart';
import 'package:flutter_sample/data/models/requests/get_movie_detail_request.dart';
import 'package:flutter_sample/domain/usecases/get_movie_detail_usecase.dart';

import '../../../core/data_state.dart';
import '../../../domain/entities/movie.dart';

part 'detail_event.dart';
part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc({
    required this.getMovieDetailUsecase,
  }) : super(const DetailInitState()) {
    on<FetchDetail>(_fetchDetail);
  }

  final GetMovieDetailUsecase getMovieDetailUsecase;

  _fetchDetail(FetchDetail event, Emitter<DetailState> emit) async {
    final response = await getMovieDetailUsecase.call(
      GetMovieDetailRequest(
        apiKey: '7c89f0483dfba44fb752ae6d50393fd0',
        language: 'ko-KR',
        region: 'KR',
        id: event.id,
      ),
    );

    if (response is Success && response.data != null) {
      emit(DetailFetchingSuccessState(data: response.data!));
    } else {
      emit(DetailFetchingFailedState(message: response.error?.message));
    }
  }
}
