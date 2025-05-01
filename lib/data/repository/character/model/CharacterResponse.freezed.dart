// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CharacterResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CharacterResponse _$CharacterResponseFromJson(Map<String, dynamic> json) {
  return _CharacterResponse.fromJson(json);
}

/// @nodoc
mixin _$CharacterResponse {
  String? get message => throw _privateConstructorUsedError;
  List<CharacterDetailResponse>? get results =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterResponseCopyWith<CharacterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterResponseCopyWith<$Res> {
  factory $CharacterResponseCopyWith(
          CharacterResponse value, $Res Function(CharacterResponse) then) =
      _$CharacterResponseCopyWithImpl<$Res, CharacterResponse>;
  @useResult
  $Res call({String? message, List<CharacterDetailResponse>? results});
}

/// @nodoc
class _$CharacterResponseCopyWithImpl<$Res, $Val extends CharacterResponse>
    implements $CharacterResponseCopyWith<$Res> {
  _$CharacterResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CharacterDetailResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterResponseImplCopyWith<$Res>
    implements $CharacterResponseCopyWith<$Res> {
  factory _$$CharacterResponseImplCopyWith(_$CharacterResponseImpl value,
          $Res Function(_$CharacterResponseImpl) then) =
      __$$CharacterResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, List<CharacterDetailResponse>? results});
}

/// @nodoc
class __$$CharacterResponseImplCopyWithImpl<$Res>
    extends _$CharacterResponseCopyWithImpl<$Res, _$CharacterResponseImpl>
    implements _$$CharacterResponseImplCopyWith<$Res> {
  __$$CharacterResponseImplCopyWithImpl(_$CharacterResponseImpl _value,
      $Res Function(_$CharacterResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? results = freezed,
  }) {
    return _then(_$CharacterResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CharacterDetailResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterResponseImpl implements _CharacterResponse {
  const _$CharacterResponseImpl(
      {this.message, final List<CharacterDetailResponse>? results})
      : _results = results;

  factory _$CharacterResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterResponseImplFromJson(json);

  @override
  final String? message;
  final List<CharacterDetailResponse>? _results;
  @override
  List<CharacterDetailResponse>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CharacterResponse(message: $message, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterResponseImplCopyWith<_$CharacterResponseImpl> get copyWith =>
      __$$CharacterResponseImplCopyWithImpl<_$CharacterResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterResponseImplToJson(
      this,
    );
  }
}

abstract class _CharacterResponse implements CharacterResponse {
  const factory _CharacterResponse(
      {final String? message,
      final List<CharacterDetailResponse>? results}) = _$CharacterResponseImpl;

  factory _CharacterResponse.fromJson(Map<String, dynamic> json) =
      _$CharacterResponseImpl.fromJson;

  @override
  String? get message;
  @override
  List<CharacterDetailResponse>? get results;
  @override
  @JsonKey(ignore: true)
  _$$CharacterResponseImplCopyWith<_$CharacterResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CharacterDetailResponse _$CharacterDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _CharacterDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$CharacterDetailResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get species => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  CharacterDetailOriginResponse? get origin =>
      throw _privateConstructorUsedError;
  CharacterDetailLocationResponse? get location =>
      throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<String>? get episode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterDetailResponseCopyWith<CharacterDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDetailResponseCopyWith<$Res> {
  factory $CharacterDetailResponseCopyWith(CharacterDetailResponse value,
          $Res Function(CharacterDetailResponse) then) =
      _$CharacterDetailResponseCopyWithImpl<$Res, CharacterDetailResponse>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? status,
      String? species,
      String? type,
      String? gender,
      CharacterDetailOriginResponse? origin,
      CharacterDetailLocationResponse? location,
      String? image,
      List<String>? episode});

  $CharacterDetailOriginResponseCopyWith<$Res>? get origin;
  $CharacterDetailLocationResponseCopyWith<$Res>? get location;
}

/// @nodoc
class _$CharacterDetailResponseCopyWithImpl<$Res,
        $Val extends CharacterDetailResponse>
    implements $CharacterDetailResponseCopyWith<$Res> {
  _$CharacterDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? type = freezed,
    Object? gender = freezed,
    Object? origin = freezed,
    Object? location = freezed,
    Object? image = freezed,
    Object? episode = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as CharacterDetailOriginResponse?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as CharacterDetailLocationResponse?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterDetailOriginResponseCopyWith<$Res>? get origin {
    if (_value.origin == null) {
      return null;
    }

    return $CharacterDetailOriginResponseCopyWith<$Res>(_value.origin!,
        (value) {
      return _then(_value.copyWith(origin: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterDetailLocationResponseCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $CharacterDetailLocationResponseCopyWith<$Res>(_value.location!,
        (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharacterDetailResponseImplCopyWith<$Res>
    implements $CharacterDetailResponseCopyWith<$Res> {
  factory _$$CharacterDetailResponseImplCopyWith(
          _$CharacterDetailResponseImpl value,
          $Res Function(_$CharacterDetailResponseImpl) then) =
      __$$CharacterDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? status,
      String? species,
      String? type,
      String? gender,
      CharacterDetailOriginResponse? origin,
      CharacterDetailLocationResponse? location,
      String? image,
      List<String>? episode});

  @override
  $CharacterDetailOriginResponseCopyWith<$Res>? get origin;
  @override
  $CharacterDetailLocationResponseCopyWith<$Res>? get location;
}

/// @nodoc
class __$$CharacterDetailResponseImplCopyWithImpl<$Res>
    extends _$CharacterDetailResponseCopyWithImpl<$Res,
        _$CharacterDetailResponseImpl>
    implements _$$CharacterDetailResponseImplCopyWith<$Res> {
  __$$CharacterDetailResponseImplCopyWithImpl(
      _$CharacterDetailResponseImpl _value,
      $Res Function(_$CharacterDetailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? type = freezed,
    Object? gender = freezed,
    Object? origin = freezed,
    Object? location = freezed,
    Object? image = freezed,
    Object? episode = freezed,
  }) {
    return _then(_$CharacterDetailResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as CharacterDetailOriginResponse?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as CharacterDetailLocationResponse?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _value._episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterDetailResponseImpl implements _CharacterDetailResponse {
  const _$CharacterDetailResponseImpl(
      {this.id,
      this.name,
      this.status,
      this.species,
      this.type,
      this.gender,
      this.origin,
      this.location,
      this.image,
      final List<String>? episode})
      : _episode = episode;

  factory _$CharacterDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterDetailResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? status;
  @override
  final String? species;
  @override
  final String? type;
  @override
  final String? gender;
  @override
  final CharacterDetailOriginResponse? origin;
  @override
  final CharacterDetailLocationResponse? location;
  @override
  final String? image;
  final List<String>? _episode;
  @override
  List<String>? get episode {
    final value = _episode;
    if (value == null) return null;
    if (_episode is EqualUnmodifiableListView) return _episode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CharacterDetailResponse(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, origin: $origin, location: $location, image: $image, episode: $episode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterDetailResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._episode, _episode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      status,
      species,
      type,
      gender,
      origin,
      location,
      image,
      const DeepCollectionEquality().hash(_episode));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterDetailResponseImplCopyWith<_$CharacterDetailResponseImpl>
      get copyWith => __$$CharacterDetailResponseImplCopyWithImpl<
          _$CharacterDetailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _CharacterDetailResponse implements CharacterDetailResponse {
  const factory _CharacterDetailResponse(
      {final int? id,
      final String? name,
      final String? status,
      final String? species,
      final String? type,
      final String? gender,
      final CharacterDetailOriginResponse? origin,
      final CharacterDetailLocationResponse? location,
      final String? image,
      final List<String>? episode}) = _$CharacterDetailResponseImpl;

  factory _CharacterDetailResponse.fromJson(Map<String, dynamic> json) =
      _$CharacterDetailResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get status;
  @override
  String? get species;
  @override
  String? get type;
  @override
  String? get gender;
  @override
  CharacterDetailOriginResponse? get origin;
  @override
  CharacterDetailLocationResponse? get location;
  @override
  String? get image;
  @override
  List<String>? get episode;
  @override
  @JsonKey(ignore: true)
  _$$CharacterDetailResponseImplCopyWith<_$CharacterDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CharacterDetailOriginResponse _$CharacterDetailOriginResponseFromJson(
    Map<String, dynamic> json) {
  return _CharacterDetailOriginResponse.fromJson(json);
}

/// @nodoc
mixin _$CharacterDetailOriginResponse {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterDetailOriginResponseCopyWith<CharacterDetailOriginResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDetailOriginResponseCopyWith<$Res> {
  factory $CharacterDetailOriginResponseCopyWith(
          CharacterDetailOriginResponse value,
          $Res Function(CharacterDetailOriginResponse) then) =
      _$CharacterDetailOriginResponseCopyWithImpl<$Res,
          CharacterDetailOriginResponse>;
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class _$CharacterDetailOriginResponseCopyWithImpl<$Res,
        $Val extends CharacterDetailOriginResponse>
    implements $CharacterDetailOriginResponseCopyWith<$Res> {
  _$CharacterDetailOriginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterDetailOriginResponseImplCopyWith<$Res>
    implements $CharacterDetailOriginResponseCopyWith<$Res> {
  factory _$$CharacterDetailOriginResponseImplCopyWith(
          _$CharacterDetailOriginResponseImpl value,
          $Res Function(_$CharacterDetailOriginResponseImpl) then) =
      __$$CharacterDetailOriginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class __$$CharacterDetailOriginResponseImplCopyWithImpl<$Res>
    extends _$CharacterDetailOriginResponseCopyWithImpl<$Res,
        _$CharacterDetailOriginResponseImpl>
    implements _$$CharacterDetailOriginResponseImplCopyWith<$Res> {
  __$$CharacterDetailOriginResponseImplCopyWithImpl(
      _$CharacterDetailOriginResponseImpl _value,
      $Res Function(_$CharacterDetailOriginResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$CharacterDetailOriginResponseImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterDetailOriginResponseImpl
    implements _CharacterDetailOriginResponse {
  const _$CharacterDetailOriginResponseImpl({this.name, this.url});

  factory _$CharacterDetailOriginResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CharacterDetailOriginResponseImplFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString() {
    return 'CharacterDetailOriginResponse(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterDetailOriginResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterDetailOriginResponseImplCopyWith<
          _$CharacterDetailOriginResponseImpl>
      get copyWith => __$$CharacterDetailOriginResponseImplCopyWithImpl<
          _$CharacterDetailOriginResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterDetailOriginResponseImplToJson(
      this,
    );
  }
}

abstract class _CharacterDetailOriginResponse
    implements CharacterDetailOriginResponse {
  const factory _CharacterDetailOriginResponse(
      {final String? name,
      final String? url}) = _$CharacterDetailOriginResponseImpl;

  factory _CharacterDetailOriginResponse.fromJson(Map<String, dynamic> json) =
      _$CharacterDetailOriginResponseImpl.fromJson;

  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$CharacterDetailOriginResponseImplCopyWith<
          _$CharacterDetailOriginResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CharacterDetailLocationResponse _$CharacterDetailLocationResponseFromJson(
    Map<String, dynamic> json) {
  return _CharacterDetailLocationResponse.fromJson(json);
}

/// @nodoc
mixin _$CharacterDetailLocationResponse {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterDetailLocationResponseCopyWith<CharacterDetailLocationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDetailLocationResponseCopyWith<$Res> {
  factory $CharacterDetailLocationResponseCopyWith(
          CharacterDetailLocationResponse value,
          $Res Function(CharacterDetailLocationResponse) then) =
      _$CharacterDetailLocationResponseCopyWithImpl<$Res,
          CharacterDetailLocationResponse>;
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class _$CharacterDetailLocationResponseCopyWithImpl<$Res,
        $Val extends CharacterDetailLocationResponse>
    implements $CharacterDetailLocationResponseCopyWith<$Res> {
  _$CharacterDetailLocationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterDetailLocationResponseImplCopyWith<$Res>
    implements $CharacterDetailLocationResponseCopyWith<$Res> {
  factory _$$CharacterDetailLocationResponseImplCopyWith(
          _$CharacterDetailLocationResponseImpl value,
          $Res Function(_$CharacterDetailLocationResponseImpl) then) =
      __$$CharacterDetailLocationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class __$$CharacterDetailLocationResponseImplCopyWithImpl<$Res>
    extends _$CharacterDetailLocationResponseCopyWithImpl<$Res,
        _$CharacterDetailLocationResponseImpl>
    implements _$$CharacterDetailLocationResponseImplCopyWith<$Res> {
  __$$CharacterDetailLocationResponseImplCopyWithImpl(
      _$CharacterDetailLocationResponseImpl _value,
      $Res Function(_$CharacterDetailLocationResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$CharacterDetailLocationResponseImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterDetailLocationResponseImpl
    implements _CharacterDetailLocationResponse {
  const _$CharacterDetailLocationResponseImpl({this.name, this.url});

  factory _$CharacterDetailLocationResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CharacterDetailLocationResponseImplFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString() {
    return 'CharacterDetailLocationResponse(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterDetailLocationResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterDetailLocationResponseImplCopyWith<
          _$CharacterDetailLocationResponseImpl>
      get copyWith => __$$CharacterDetailLocationResponseImplCopyWithImpl<
          _$CharacterDetailLocationResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterDetailLocationResponseImplToJson(
      this,
    );
  }
}

abstract class _CharacterDetailLocationResponse
    implements CharacterDetailLocationResponse {
  const factory _CharacterDetailLocationResponse(
      {final String? name,
      final String? url}) = _$CharacterDetailLocationResponseImpl;

  factory _CharacterDetailLocationResponse.fromJson(Map<String, dynamic> json) =
      _$CharacterDetailLocationResponseImpl.fromJson;

  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$CharacterDetailLocationResponseImplCopyWith<
          _$CharacterDetailLocationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
