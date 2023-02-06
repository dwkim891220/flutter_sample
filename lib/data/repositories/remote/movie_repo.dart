import 'package:either_dart/either.dart';
import 'package:flutter_sample/data/datasources/remote/tmdb_api_service.dart';
import 'package:flutter_sample/data/models/responses/get_popular_movie_list_response.dart';
import 'package:flutter_sample/domain/entities/movie.dart';

import '../../../core/data_state.dart';
import '../../../core/network_error.dart';
import '../../../domain/repositories/movie_repo.dart';

class MovieRepository implements IMovieRepository {
  MovieRepository({required this.tmdbApiService});

  ITMDBApiService tmdbApiService;

  DataState<T> _wrappingResult<T>(Either<T, NetworkError> result) {
    if (result.isLeft) {
      return Success(result.left);
    } else {
      return Failed(result.right);
    }
  }

  @override
  Future<DataState<GetPopularMovieListResponse>> getPopularMovieList(
    String apiKey,
    String language,
    String region,
    int page,
  ) async {
    final result = await tmdbApiService.getPopularMovieList(
      apiKey,
      language,
      region,
      page,
    );

    return _wrappingResult(result);
  }

  @override
  Future<DataState<Movie>> getMovieDetail(
    String apiKey,
    String language,
    String region,
    int id,
  ) async {
    final result = await tmdbApiService.getMovieDetail(
      apiKey,
      language,
      region,
      id,
    );

    return _wrappingResult(result);
  }
}
