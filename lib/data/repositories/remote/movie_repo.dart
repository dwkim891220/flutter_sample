import 'package:flutter_sample/data/datasources/remote/tmdb_api_service.dart';
import 'package:flutter_sample/data/models/responses/get_popular_movie_list_response.dart';

import '../../../core/data_state.dart';
import '../../../domain/repositories/movie_repo.dart';

class MovieRepository extends IMovieRepository {
  MovieRepository({required this.tmdbApiService});

  ITMDBApiService tmdbApiService;

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

    if (result.isLeft) {
      return Success(result.left);
    } else {
      return Failed(result.right);
    }
  }
}
