// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_popular_movie_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetPopularMovieListResponse _$$_GetPopularMovieListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetPopularMovieListResponse(
      page: json['page'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Movie.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int,
      totalResults: json['total_results'] as int,
    );

Map<String, dynamic> _$$_GetPopularMovieListResponseToJson(
        _$_GetPopularMovieListResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
