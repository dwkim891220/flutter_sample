import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_popular_movie_list_request.freezed.dart';
part 'get_popular_movie_list_request.g.dart';

@freezed
class GetPopularMovieListRequest with _$GetPopularMovieListRequest {
  factory GetPopularMovieListRequest({
    required String apiKey,
    required String language,
    required String region,
    required int page,
  }) = _GetPopularMovieListRequest;

  factory GetPopularMovieListRequest.fromJson(Map<String, dynamic> json) =>
      _$GetPopularMovieListRequestFromJson(json);
}
