import 'package:either_dart/src/either.dart';
import 'package:flutter_sample/data/models/requests/get_popular_movie_list_request.dart';
import 'package:flutter_sample/data/models/responses/get_popular_movie_list_response.dart';
import 'package:flutter_sample/data/repositories/remote/movie_repo.dart';
import 'package:flutter_sample/core/usercase.dart';

import '../../core/data_state.dart';

class GetPopularMovieListUsecase
    implements
        UseCase<DataState<GetPopularMovieListResponse>,
            GetPopularMovieListRequest> {
  GetPopularMovieListUsecase(this._repo);

  final MovieRepository _repo;

  @override
  Future<DataState<GetPopularMovieListResponse>> call(
    GetPopularMovieListRequest params,
  ) =>
      _repo.getPopularMovieList(
        params.apiKey,
        params.language,
        params.region,
      );
}
