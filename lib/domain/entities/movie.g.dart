// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$$_MovieFromJson(Map<String, dynamic> json) => _$_Movie(
      id: json['id'] as String,
      title: json['title'] as String,
      overview: json['overview'] as String,
      voteAverage: json['vote_average'] as String,
      releaseDate: json['release_date'] as String,
      posterPath: json['poster_path'] as String,
    );

Map<String, dynamic> _$$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'overview': instance.overview,
      'vote_average': instance.voteAverage,
      'release_date': instance.releaseDate,
      'poster_path': instance.posterPath,
    };
