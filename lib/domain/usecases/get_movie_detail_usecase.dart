import 'package:flutter_sample/data/models/requests/get_movie_detail_request.dart';

import '../../core/data_state.dart';
import '../../core/usercase.dart';
import '../entities/movie.dart';
import '../repositories/movie_repo.dart';

class GetMovieDetailUsecase
    implements UseCase<DataState<Movie>, GetMovieDetailRequest> {
  GetMovieDetailUsecase(this._repo);

  final IMovieRepository _repo;

  @override
  Future<DataState<Movie>> call(
    GetMovieDetailRequest params,
  ) =>
      _repo.getMovieDetail(
        params.apiKey,
        params.language,
        params.region,
        params.id,
      );
}
