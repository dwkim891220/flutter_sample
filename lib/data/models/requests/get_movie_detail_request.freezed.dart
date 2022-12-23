// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_movie_detail_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetMovieDetailRequest _$GetMovieDetailRequestFromJson(
    Map<String, dynamic> json) {
  return _GetMovieDetailRequest.fromJson(json);
}

/// @nodoc
mixin _$GetMovieDetailRequest {
  String get apiKey => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMovieDetailRequestCopyWith<GetMovieDetailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMovieDetailRequestCopyWith<$Res> {
  factory $GetMovieDetailRequestCopyWith(GetMovieDetailRequest value,
          $Res Function(GetMovieDetailRequest) then) =
      _$GetMovieDetailRequestCopyWithImpl<$Res, GetMovieDetailRequest>;
  @useResult
  $Res call({String apiKey, String language, String region, int id});
}

/// @nodoc
class _$GetMovieDetailRequestCopyWithImpl<$Res,
        $Val extends GetMovieDetailRequest>
    implements $GetMovieDetailRequestCopyWith<$Res> {
  _$GetMovieDetailRequestCopyWithImpl(this._value, this._then);

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
    Object? id = null,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetMovieDetailRequestCopyWith<$Res>
    implements $GetMovieDetailRequestCopyWith<$Res> {
  factory _$$_GetMovieDetailRequestCopyWith(_$_GetMovieDetailRequest value,
          $Res Function(_$_GetMovieDetailRequest) then) =
      __$$_GetMovieDetailRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String apiKey, String language, String region, int id});
}

/// @nodoc
class __$$_GetMovieDetailRequestCopyWithImpl<$Res>
    extends _$GetMovieDetailRequestCopyWithImpl<$Res, _$_GetMovieDetailRequest>
    implements _$$_GetMovieDetailRequestCopyWith<$Res> {
  __$$_GetMovieDetailRequestCopyWithImpl(_$_GetMovieDetailRequest _value,
      $Res Function(_$_GetMovieDetailRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiKey = null,
    Object? language = null,
    Object? region = null,
    Object? id = null,
  }) {
    return _then(_$_GetMovieDetailRequest(
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetMovieDetailRequest implements _GetMovieDetailRequest {
  _$_GetMovieDetailRequest(
      {required this.apiKey,
      required this.language,
      required this.region,
      required this.id});

  factory _$_GetMovieDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$$_GetMovieDetailRequestFromJson(json);

  @override
  final String apiKey;
  @override
  final String language;
  @override
  final String region;
  @override
  final int id;

  @override
  String toString() {
    return 'GetMovieDetailRequest(apiKey: $apiKey, language: $language, region: $region, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMovieDetailRequest &&
            (identical(other.apiKey, apiKey) || other.apiKey == apiKey) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, apiKey, language, region, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMovieDetailRequestCopyWith<_$_GetMovieDetailRequest> get copyWith =>
      __$$_GetMovieDetailRequestCopyWithImpl<_$_GetMovieDetailRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetMovieDetailRequestToJson(
      this,
    );
  }
}

abstract class _GetMovieDetailRequest implements GetMovieDetailRequest {
  factory _GetMovieDetailRequest(
      {required final String apiKey,
      required final String language,
      required final String region,
      required final int id}) = _$_GetMovieDetailRequest;

  factory _GetMovieDetailRequest.fromJson(Map<String, dynamic> json) =
      _$_GetMovieDetailRequest.fromJson;

  @override
  String get apiKey;
  @override
  String get language;
  @override
  String get region;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_GetMovieDetailRequestCopyWith<_$_GetMovieDetailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
