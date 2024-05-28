import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:either_dart/either.dart';
import 'package:flutter_sample/core/network_error.dart';
import 'package:http/http.dart';

import '../config/urls_base.dart';

class NetworkClient {
  NetworkClient(this._urls);

  final IBaseUrls _urls;
  
  Future<Either<Map<String, dynamic>, NetworkError>> getRequest(
    String path,
    Map<String, String> queryParam,
  ) async {
    final uri = Uri.https(_urls.hostUrl, path, queryParam);

    final client = http.Client();
    Response? response;

    try {
      response = await client.get(uri);
    } catch (e) {
      return Right(
        NetworkError(
          code: -1,
          message: '${uri.toString()} ${e.toString()}',
        ),
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

  Either<T, NetworkError> responseParsing<T>(
    Either<Map<String, dynamic>, NetworkError> result,
    T Function() convertJson,
  ) {
    if (result.isLeft) {
      try {
        return Left(convertJson());
      } on Exception {
        final jsonString = result.left.toString();
        final error = NetworkError(
          code: -1,
          message: "response parsing Error $jsonString",
        );

        return Right(error);
      }
    } else {
      return Right(result.right);
    }
  }
}