import 'package:flutter_sample/core/network_client.dart';
import 'package:flutter_sample/data/datasources/remote/tmdb_api_service.dart';
import 'package:flutter_sample/domain/entities/movie.dart';


import 'package:either_dart/either.dart';
import 'package:flutter_sample/data/models/responses/get_popular_movie_list_response.dart';

import '../../../config/urls_base.dart';
import '../../constants/paths.dart';
import '../../../core/network_error.dart';

class TMDBApiServiceImpl implements ITMDBApiService {
  TMDBApiServiceImpl(this._urls);

  final IBaseUrls _urls;

  @override
  Future<Either<GetPopularMovieListResponse, NetworkError>> getPopularMovieList(
    String apiKey,
    String language,
    String region,
    int page,
  ) async {
    final client = NetworkClient(_urls);
    final result = await client.getRequest(
      Paths.popular,
      {
        'api_key': apiKey,
        'language': language,
        'region': region,
        'page': page.toString(),
      },
    );

    return client.responseParsing(
      result,
      () => GetPopularMovieListResponse.fromJson(result.left),
    );
  }

  @override
  Future<Either<Movie, NetworkError>> getMovieDetail(
    String apiKey,
    String language,
    String region,
    int id,
  ) async {
    final client = NetworkClient(_urls);
    final result = await client.getRequest(
      Paths.detail(id),
      {
        'api_key': apiKey,
        'language': language,
        'region': region,
      },
    );

    return client.responseParsing(
      result,
      () => Movie.fromJson(result.left),
    );
  }
}
