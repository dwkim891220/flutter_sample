// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_popular_movie_list_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetPopularMovieListRequest _$$_GetPopularMovieListRequestFromJson(
        Map<String, dynamic> json) =>
    _$_GetPopularMovieListRequest(
      apiKey: json['apiKey'] as String,
      language: json['language'] as String,
      region: json['region'] as String,
    );

Map<String, dynamic> _$$_GetPopularMovieListRequestToJson(
        _$_GetPopularMovieListRequest instance) =>
    <String, dynamic>{
      'apiKey': instance.apiKey,
      'language': instance.language,
      'region': instance.region,
    };
