// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_movie_detail_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetMovieDetailRequest _$$_GetMovieDetailRequestFromJson(
        Map<String, dynamic> json) =>
    _$_GetMovieDetailRequest(
      apiKey: json['apiKey'] as String,
      language: json['language'] as String,
      region: json['region'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$$_GetMovieDetailRequestToJson(
        _$_GetMovieDetailRequest instance) =>
    <String, dynamic>{
      'apiKey': instance.apiKey,
      'language': instance.language,
      'region': instance.region,
      'id': instance.id,
    };
