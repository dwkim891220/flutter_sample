// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_popular_movie_list_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetPopularMovieListRequest _$GetPopularMovieListRequestFromJson(
    Map<String, dynamic> json) {
  return _GetPopularMovieListRequest.fromJson(json);
}

/// @nodoc
mixin _$GetPopularMovieListRequest {
  String get apiKey => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPopularMovieListRequestCopyWith<GetPopularMovieListRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPopularMovieListRequestCopyWith<$Res> {
  factory $GetPopularMovieListRequestCopyWith(GetPopularMovieListRequest value,
          $Res Function(GetPopularMovieListRequest) then) =
      _$GetPopularMovieListRequestCopyWithImpl<$Res,
          GetPopularMovieListRequest>;
  @useResult
  $Res call({String apiKey, String language, String region, int page});
}

/// @nodoc
class _$GetPopularMovieListRequestCopyWithImpl<$Res,
        $Val extends GetPopularMovieListRequest>
    implements $GetPopularMovieListRequestCopyWith<$Res> {
  _$GetPopularMovieListRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? language = null,
    Object? region = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetPopularMovieListRequestCopyWith<$Res>
    implements $GetPopularMovieListRequestCopyWith<$Res> {
  factory _$$_GetPopularMovieListRequestCopyWith(
          _$_GetPopularMovieListRequest value,
          $Res Function(_$_GetPopularMovieListRequest) then) =
      __$$_GetPopularMovieListRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String apiKey, String language, String region, int page});
}

/// @nodoc
class __$$_GetPopularMovieListRequestCopyWithImpl<$Res>
    extends _$GetPopularMovieListRequestCopyWithImpl<$Res,
        _$_GetPopularMovieListRequest>
    implements _$$_GetPopularMovieListRequestCopyWith<$Res> {
  __$$_GetPopularMovieListRequestCopyWithImpl(
      _$_GetPopularMovieListRequest _value,
      $Res Function(_$_GetPopularMovieListRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? language = null,
    Object? region = null,
    Object? page = null,
  }) {
    return _then(_$_GetPopularMovieListRequest(
      apiKey: null == apiKey
          ? _value.apiKey
          : apiKey // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetPopularMovieListRequest implements _GetPopularMovieListRequest {
  _$_GetPopularMovieListRequest(
      {required this.apiKey,
      required this.language,
      required this.region,
      required this.page});

  factory _$_GetPopularMovieListRequest.fromJson(Map<String, dynamic> json) =>
      _$$_GetPopularMovieListRequestFromJson(json);

  @override
  final String apiKey;
  @override
  final String language;
  @override
  final String region;
  @override
  final int page;

  @override
  String toString() {
    return 'GetPopularMovieListRequest(apiKey: $apiKey, language: $language, region: $region, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPopularMovieListRequest &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, apiKey, language, region, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPopularMovieListRequestCopyWith<_$_GetPopularMovieListRequest>
      get copyWith => __$$_GetPopularMovieListRequestCopyWithImpl<
          _$_GetPopularMovieListRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetPopularMovieListRequestToJson(
      this,
    );
  }
}

abstract class _GetPopularMovieListRequest
    implements GetPopularMovieListRequest {
  factory _GetPopularMovieListRequest(
      {required final String apiKey,
      required final String language,
      required final String region,
      required final int page}) = _$_GetPopularMovieListRequest;

  factory _GetPopularMovieListRequest.fromJson(Map<String, dynamic> json) =
      _$_GetPopularMovieListRequest.fromJson;

  @override
  String get apiKey;
  @override
  String get language;
  @override
  String get region;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$_GetPopularMovieListRequestCopyWith<_$_GetPopularMovieListRequest>
      get copyWith => throw _privateConstructorUsedError;
}
