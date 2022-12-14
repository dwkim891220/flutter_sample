import 'package:either_dart/either.dart';

import '../../../domain/entities/movie.dart';
import '../../models/responses/get_popular_movie_list_response.dart';
import '../../../core/network_error.dart';

abstract class ITMDBApiService {
  Future<Either<GetPopularMovieListResponse, NetworkError>> getPopularMovieList(
    String apiKey,
    String language,
    String region,
    int page,
  );

  Future<Either<Movie, NetworkError>> getMovieDetail(
    String apiKey,
    String language,
    String region,
    int id,
  );
}
