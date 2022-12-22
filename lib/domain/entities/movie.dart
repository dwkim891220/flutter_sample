import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
//Movie._(); need internal constructor for use method or getter in freezed class
  const Movie._(); // ignore: unused_element

  const factory Movie({
    required int id,
    required String title,
    required String overview,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'poster_path') required String posterPath,
  }) = _Movie;

  factory Movie.fromJson(Map<String, Object?> json) => _$MovieFromJson(json);

  get posterUrl => 'https://image.tmdb.org/t/p/w200$posterPath';
}
