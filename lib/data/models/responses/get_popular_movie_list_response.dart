import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/movie.dart';

part 'get_popular_movie_list_response.freezed.dart';
part 'get_popular_movie_list_response.g.dart';

@freezed
class GetPopularMovieListResponse with _$GetPopularMovieListResponse {
  factory GetPopularMovieListResponse({
    required int page,
    required List<Movie> results,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
  }) = _GetPopularMovieListResponse;

  factory GetPopularMovieListResponse.fromJson(Map<String, dynamic> json) =>
      _$GetPopularMovieListResponseFromJson(json);
}
