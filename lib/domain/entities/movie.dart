import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required String id,
    required String title,
    required String overview,
    @JsonKey(name: 'vote_average') required String voteAverage,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'poster_path') required String posterPath,
  }) = _Movie;

  //TODO
  //Movie._(); need internal constructor for use method or getter in freezed class

  factory Movie.fromJson(Map<String, Object?> json) => _$MovieFromJson(json);
}
