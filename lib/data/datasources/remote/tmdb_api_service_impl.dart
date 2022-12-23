import 'dart:convert';

import 'package:flutter_sample/data/datasources/remote/tmdb_api_service.dart';
import 'package:flutter_sample/domain/entities/movie.dart';
import 'package:http/http.dart' as http;

import 'package:either_dart/either.dart';
import 'package:flutter_sample/data/models/responses/get_popular_movie_list_response.dart';
import 'package:http/http.dart';

import '../../../config/urls_base.dart';
import '../../constants/paths.dart';
import '../../../core/network_error.dart';

class TMDBApiServiceImpl extends ITMDBApiService {
  TMDBApiServiceImpl(this._urls);

  final IBaseUrls _urls;

  Future<Either<Map<String, dynamic>, NetworkError>> _getRequest(
    String path,
    Map<String, String> queryParam,
  ) async {
    final uri = Uri.https(_urls.hostUrl, path, queryParam);

    final client = http.Client();
    Response? response;

    try {
      response = await client.get(uri);
    } on Exception {
      return const Right(
        NetworkError(code: 0, message: ''),
      );
    } finally {
      client.close();
    }

    if (response.statusCode != 200) {
      return Right(
        NetworkError(
          code: response.statusCode,
          message: response.body,
        ),
      );
    } else {
      final parsed = jsonDecode(response.body).cast<String, dynamic>();
      return Left(parsed);
    }
  }

  @override
  Future<Either<GetPopularMovieListResponse, NetworkError>> getPopularMovieList(
    String apiKey,
    String language,
    String region,
    int page,
  ) async {
    final result = await _getRequest(
      Paths.popular,
      {
        'api_key': apiKey,
        'language': language,
        'region': region,
        'page': page.toString(),
      },
    );

    if (result.isLeft) {
      return Left(GetPopularMovieListResponse.fromJson(result.left));
    } else {
      return Right(result.right);
    }
  }

  @override
  Future<Either<Movie, NetworkError>> getMovieDetail(
    String apiKey,
    String language,
    String region,
    int id,
  ) async {
    final result = await _getRequest(
      Paths.detail(id),
      {
        'api_key': apiKey,
        'language': language,
        'region': region,
      },
    );

    if (result.isLeft) {
      return Left(Movie.fromJson(result.left));
    } else {
      return Right(result.right);
    }
  }
}
