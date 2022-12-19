// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_popular_movie_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetPopularMovieListResponse _$GetPopularMovieListResponseFromJson(
    Map<String, dynamic> json) {
  return _GetPopularMovieListResponse.fromJson(json);
}

/// @nodoc
mixin _$GetPopularMovieListResponse {
  int get page => throw _privateConstructorUsedError;
  List<Movie> get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPopularMovieListResponseCopyWith<GetPopularMovieListResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPopularMovieListResponseCopyWith<$Res> {
  factory $GetPopularMovieListResponseCopyWith(
          GetPopularMovieListResponse value,
          $Res Function(GetPopularMovieListResponse) then) =
      _$GetPopularMovieListResponseCopyWithImpl<$Res,
          GetPopularMovieListResponse>;
  @useResult
  $Res call(
      {int page,
      List<Movie> results,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class _$GetPopularMovieListResponseCopyWithImpl<$Res,
        $Val extends GetPopularMovieListResponse>
    implements $GetPopularMovieListResponseCopyWith<$Res> {
  _$GetPopularMovieListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetPopularMovieListResponseCopyWith<$Res>
    implements $GetPopularMovieListResponseCopyWith<$Res> {
  factory _$$_GetPopularMovieListResponseCopyWith(
          _$_GetPopularMovieListResponse value,
          $Res Function(_$_GetPopularMovieListResponse) then) =
      __$$_GetPopularMovieListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      List<Movie> results,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class __$$_GetPopularMovieListResponseCopyWithImpl<$Res>
    extends _$GetPopularMovieListResponseCopyWithImpl<$Res,
        _$_GetPopularMovieListResponse>
    implements _$$_GetPopularMovieListResponseCopyWith<$Res> {
  __$$_GetPopularMovieListResponseCopyWithImpl(
      _$_GetPopularMovieListResponse _value,
      $Res Function(_$_GetPopularMovieListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_$_GetPopularMovieListResponse(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetPopularMovieListResponse implements _GetPopularMovieListResponse {
  _$_GetPopularMovieListResponse(
      {required this.page,
      required final List<Movie> results,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'total_results') required this.totalResults})
      : _results = results;

  factory _$_GetPopularMovieListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetPopularMovieListResponseFromJson(json);

  @override
  final int page;
  final List<Movie> _results;
  @override
  List<Movie> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;

  @override
  String toString() {
    return 'GetPopularMovieListResponse(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPopularMovieListResponse &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPopularMovieListResponseCopyWith<_$_GetPopularMovieListResponse>
      get copyWith => __$$_GetPopularMovieListResponseCopyWithImpl<
          _$_GetPopularMovieListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetPopularMovieListResponseToJson(
      this,
    );
  }
}

abstract class _GetPopularMovieListResponse
    implements GetPopularMovieListResponse {
  factory _GetPopularMovieListResponse(
          {required final int page,
          required final List<Movie> results,
          @JsonKey(name: 'total_pages') required final int totalPages,
          @JsonKey(name: 'total_results') required final int totalResults}) =
      _$_GetPopularMovieListResponse;

  factory _GetPopularMovieListResponse.fromJson(Map<String, dynamic> json) =
      _$_GetPopularMovieListResponse.fromJson;

  @override
  int get page;
  @override
  List<Movie> get results;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$_GetPopularMovieListResponseCopyWith<_$_GetPopularMovieListResponse>
      get copyWith => throw _privateConstructorUsedError;
}
