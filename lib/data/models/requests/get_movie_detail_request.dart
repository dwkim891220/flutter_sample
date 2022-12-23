import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_movie_detail_request.freezed.dart';
part 'get_movie_detail_request.g.dart';

@freezed
class GetMovieDetailRequest with _$GetMovieDetailRequest {
  factory GetMovieDetailRequest({
    required String apiKey,
    required String language,
    required String region,
    required int id,
  }) = _GetMovieDetailRequest;

  factory GetMovieDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$GetMovieDetailRequestFromJson(json);
}
