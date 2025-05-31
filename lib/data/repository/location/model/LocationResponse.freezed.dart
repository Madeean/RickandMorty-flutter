// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'LocationResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LocationResponse _$LocationResponseFromJson(Map<String, dynamic> json) {
  return _LocationResponse.fromJson(json);
}

/// @nodoc
mixin _$LocationResponse {
  String? get message => throw _privateConstructorUsedError;
  List<LocationDetailResponse>? get results =>
      throw _privateConstructorUsedError;

  /// Serializes this LocationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationResponseCopyWith<LocationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationResponseCopyWith<$Res> {
  factory $LocationResponseCopyWith(LocationResponse value,
      $Res Function(LocationResponse) then,) = _$LocationResponseCopyWithImpl<
      $Res,
      LocationResponse>;
  @useResult
  $Res call({String? message, List<LocationDetailResponse>? results});
}

/// @nodoc
class _$LocationResponseCopyWithImpl<$Res, $Val extends LocationResponse>
    implements $LocationResponseCopyWith<$Res> {
  _$LocationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed, Object? results = freezed}) {
    return _then(
      _value.copyWith(
            message:
                freezed == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String?,
            results:
                freezed == results
                    ? _value.results
                    : results // ignore: cast_nullable_to_non_nullable
                        as List<LocationDetailResponse>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocationResponseImplCopyWith<$Res>
    implements $LocationResponseCopyWith<$Res> {
  factory _$$LocationResponseImplCopyWith(
    _$LocationResponseImpl value,
    $Res Function(_$LocationResponseImpl) then,
  ) = __$$LocationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, List<LocationDetailResponse>? results});
}

/// @nodoc
class __$$LocationResponseImplCopyWithImpl<$Res>
    extends _$LocationResponseCopyWithImpl<$Res, _$LocationResponseImpl>
    implements _$$LocationResponseImplCopyWith<$Res> {
  __$$LocationResponseImplCopyWithImpl(
    _$LocationResponseImpl _value,
    $Res Function(_$LocationResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed, Object? results = freezed}) {
    return _then(
      _$LocationResponseImpl(
        message:
            freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String?,
        results:
            freezed == results
                ? _value._results
                : results // ignore: cast_nullable_to_non_nullable
                    as List<LocationDetailResponse>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationResponseImpl implements _LocationResponse {
  const _$LocationResponseImpl({
    this.message,
    final List<LocationDetailResponse>? results,
  }) : _results = results;

  factory _$LocationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationResponseImplFromJson(json);

  @override
  final String? message;
  final List<LocationDetailResponse>? _results;
  @override
  List<LocationDetailResponse>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LocationResponse(message: $message, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    message,
    const DeepCollectionEquality().hash(_results),
  );

  /// Create a copy of LocationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationResponseImplCopyWith<_$LocationResponseImpl> get copyWith =>
      __$$LocationResponseImplCopyWithImpl<_$LocationResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationResponseImplToJson(this);
  }
}

abstract class _LocationResponse implements LocationResponse {
  const factory _LocationResponse({
    final String? message,
    final List<LocationDetailResponse>? results,
  }) = _$LocationResponseImpl;

  factory _LocationResponse.fromJson(Map<String, dynamic> json) =
      _$LocationResponseImpl.fromJson;

  @override
  String? get message;
  @override
  List<LocationDetailResponse>? get results;

  /// Create a copy of LocationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationResponseImplCopyWith<_$LocationResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationDetailResponse _$LocationDetailResponseFromJson(
  Map<String, dynamic> json,
) {
  return _LocationDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$LocationDetailResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get dimension => throw _privateConstructorUsedError;
  String? get created => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  List<String>? get residents => throw _privateConstructorUsedError;

  /// Serializes this LocationDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationDetailResponseCopyWith<LocationDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDetailResponseCopyWith<$Res> {
  factory $LocationDetailResponseCopyWith(
    LocationDetailResponse value,
    $Res Function(LocationDetailResponse) then,
  ) = _$LocationDetailResponseCopyWithImpl<$Res, LocationDetailResponse>;
  @useResult
  $Res call({
    int? id,
    String? name,
    String? type,
    String? dimension,
    String? created,
    String? url,
    List<String>? residents,
  });
}

/// @nodoc
class _$LocationDetailResponseCopyWithImpl<
  $Res,
  $Val extends LocationDetailResponse
>
    implements $LocationDetailResponseCopyWith<$Res> {
  _$LocationDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? dimension = freezed,
    Object? created = freezed,
    Object? url = freezed,
    Object? residents = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                freezed == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int?,
            name:
                freezed == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String?,
            type:
                freezed == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String?,
            dimension:
                freezed == dimension
                    ? _value.dimension
                    : dimension // ignore: cast_nullable_to_non_nullable
                        as String?,
            created:
                freezed == created
                    ? _value.created
                    : created // ignore: cast_nullable_to_non_nullable
                        as String?,
            url:
                freezed == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String?,
            residents:
                freezed == residents
                    ? _value.residents
                    : residents // ignore: cast_nullable_to_non_nullable
                        as List<String>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocationDetailResponseImplCopyWith<$Res>
    implements $LocationDetailResponseCopyWith<$Res> {
  factory _$$LocationDetailResponseImplCopyWith(
    _$LocationDetailResponseImpl value,
    $Res Function(_$LocationDetailResponseImpl) then,
  ) = __$$LocationDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    String? name,
    String? type,
    String? dimension,
    String? created,
    String? url,
    List<String>? residents,
  });
}

/// @nodoc
class __$$LocationDetailResponseImplCopyWithImpl<$Res>
    extends
        _$LocationDetailResponseCopyWithImpl<$Res, _$LocationDetailResponseImpl>
    implements _$$LocationDetailResponseImplCopyWith<$Res> {
  __$$LocationDetailResponseImplCopyWithImpl(
    _$LocationDetailResponseImpl _value,
    $Res Function(_$LocationDetailResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? dimension = freezed,
    Object? created = freezed,
    Object? url = freezed,
    Object? residents = freezed,
  }) {
    return _then(
      _$LocationDetailResponseImpl(
        id:
            freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int?,
        name:
            freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String?,
        type:
            freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String?,
        dimension:
            freezed == dimension
                ? _value.dimension
                : dimension // ignore: cast_nullable_to_non_nullable
                    as String?,
        created:
            freezed == created
                ? _value.created
                : created // ignore: cast_nullable_to_non_nullable
                    as String?,
        url:
            freezed == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String?,
        residents:
            freezed == residents
                ? _value._residents
                : residents // ignore: cast_nullable_to_non_nullable
                    as List<String>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationDetailResponseImpl implements _LocationDetailResponse {
  const _$LocationDetailResponseImpl({
    this.id,
    this.name,
    this.type,
    this.dimension,
    this.created,
    this.url,
    final List<String>? residents,
  }) : _residents = residents;

  factory _$LocationDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationDetailResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? dimension;
  @override
  final String? created;
  @override
  final String? url;
  final List<String>? _residents;
  @override
  List<String>? get residents {
    final value = _residents;
    if (value == null) return null;
    if (_residents is EqualUnmodifiableListView) return _residents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LocationDetailResponse(id: $id, name: $name, type: $type, dimension: $dimension, created: $created, url: $url, residents: $residents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationDetailResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.dimension, dimension) ||
                other.dimension == dimension) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(
              other._residents,
              _residents,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    type,
    dimension,
    created,
    url,
    const DeepCollectionEquality().hash(_residents),
  );

  /// Create a copy of LocationDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationDetailResponseImplCopyWith<_$LocationDetailResponseImpl>
  get copyWith =>
      __$$LocationDetailResponseImplCopyWithImpl<_$LocationDetailResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationDetailResponseImplToJson(this);
  }
}

abstract class _LocationDetailResponse implements LocationDetailResponse {
  const factory _LocationDetailResponse({
    final int? id,
    final String? name,
    final String? type,
    final String? dimension,
    final String? created,
    final String? url,
    final List<String>? residents,
  }) = _$LocationDetailResponseImpl;

  factory _LocationDetailResponse.fromJson(Map<String, dynamic> json) =
      _$LocationDetailResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get type;
  @override
  String? get dimension;
  @override
  String? get created;
  @override
  String? get url;
  @override
  List<String>? get residents;

  /// Create a copy of LocationDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationDetailResponseImplCopyWith<_$LocationDetailResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
