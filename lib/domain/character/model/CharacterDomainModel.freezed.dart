// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CharacterDomainModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharacterDomainModel {
  String get message => throw _privateConstructorUsedError;
  List<CharacterDetailDomainModel> get results =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterDomainModelCopyWith<CharacterDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDomainModelCopyWith<$Res> {
  factory $CharacterDomainModelCopyWith(CharacterDomainModel value,
          $Res Function(CharacterDomainModel) then) =
      _$CharacterDomainModelCopyWithImpl<$Res, CharacterDomainModel>;
  @useResult
  $Res call({String message, List<CharacterDetailDomainModel> results});
}

/// @nodoc
class _$CharacterDomainModelCopyWithImpl<$Res,
        $Val extends CharacterDomainModel>
    implements $CharacterDomainModelCopyWith<$Res> {
  _$CharacterDomainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CharacterDetailDomainModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterDomainModelImplCopyWith<$Res>
    implements $CharacterDomainModelCopyWith<$Res> {
  factory _$$CharacterDomainModelImplCopyWith(_$CharacterDomainModelImpl value,
          $Res Function(_$CharacterDomainModelImpl) then) =
      __$$CharacterDomainModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, List<CharacterDetailDomainModel> results});
}

/// @nodoc
class __$$CharacterDomainModelImplCopyWithImpl<$Res>
    extends _$CharacterDomainModelCopyWithImpl<$Res, _$CharacterDomainModelImpl>
    implements _$$CharacterDomainModelImplCopyWith<$Res> {
  __$$CharacterDomainModelImplCopyWithImpl(_$CharacterDomainModelImpl _value,
      $Res Function(_$CharacterDomainModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? results = null,
  }) {
    return _then(_$CharacterDomainModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<CharacterDetailDomainModel>,
    ));
  }
}

/// @nodoc

class _$CharacterDomainModelImpl implements _CharacterDomainModel {
  const _$CharacterDomainModelImpl(
      {required this.message,
      required final List<CharacterDetailDomainModel> results})
      : _results = results;

  @override
  final String message;
  final List<CharacterDetailDomainModel> _results;
  @override
  List<CharacterDetailDomainModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'CharacterDomainModel(message: $message, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterDomainModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterDomainModelImplCopyWith<_$CharacterDomainModelImpl>
      get copyWith =>
          __$$CharacterDomainModelImplCopyWithImpl<_$CharacterDomainModelImpl>(
              this, _$identity);
}

abstract class _CharacterDomainModel implements CharacterDomainModel {
  const factory _CharacterDomainModel(
          {required final String message,
          required final List<CharacterDetailDomainModel> results}) =
      _$CharacterDomainModelImpl;

  @override
  String get message;
  @override
  List<CharacterDetailDomainModel> get results;
  @override
  @JsonKey(ignore: true)
  _$$CharacterDomainModelImplCopyWith<_$CharacterDomainModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharacterDetailDomainModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get species => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  CharacterDetailOriginDomainModel get origin =>
      throw _privateConstructorUsedError;
  CharacterDetailLocationDomainModel get location =>
      throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  List<String> get episode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterDetailDomainModelCopyWith<CharacterDetailDomainModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDetailDomainModelCopyWith<$Res> {
  factory $CharacterDetailDomainModelCopyWith(CharacterDetailDomainModel value,
          $Res Function(CharacterDetailDomainModel) then) =
      _$CharacterDetailDomainModelCopyWithImpl<$Res,
          CharacterDetailDomainModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String status,
      String species,
      String type,
      String gender,
      CharacterDetailOriginDomainModel origin,
      CharacterDetailLocationDomainModel location,
      String image,
      List<String> episode});

  $CharacterDetailOriginDomainModelCopyWith<$Res> get origin;
  $CharacterDetailLocationDomainModelCopyWith<$Res> get location;
}

/// @nodoc
class _$CharacterDetailDomainModelCopyWithImpl<$Res,
        $Val extends CharacterDetailDomainModel>
    implements $CharacterDetailDomainModelCopyWith<$Res> {
  _$CharacterDetailDomainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? species = null,
    Object? type = null,
    Object? gender = null,
    Object? origin = null,
    Object? location = null,
    Object? image = null,
    Object? episode = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as CharacterDetailOriginDomainModel,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as CharacterDetailLocationDomainModel,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      episode: null == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterDetailOriginDomainModelCopyWith<$Res> get origin {
    return $CharacterDetailOriginDomainModelCopyWith<$Res>(_value.origin,
        (value) {
      return _then(_value.copyWith(origin: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterDetailLocationDomainModelCopyWith<$Res> get location {
    return $CharacterDetailLocationDomainModelCopyWith<$Res>(_value.location,
        (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharacterDetailDomainModelImplCopyWith<$Res>
    implements $CharacterDetailDomainModelCopyWith<$Res> {
  factory _$$CharacterDetailDomainModelImplCopyWith(
          _$CharacterDetailDomainModelImpl value,
          $Res Function(_$CharacterDetailDomainModelImpl) then) =
      __$$CharacterDetailDomainModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String status,
      String species,
      String type,
      String gender,
      CharacterDetailOriginDomainModel origin,
      CharacterDetailLocationDomainModel location,
      String image,
      List<String> episode});

  @override
  $CharacterDetailOriginDomainModelCopyWith<$Res> get origin;
  @override
  $CharacterDetailLocationDomainModelCopyWith<$Res> get location;
}

/// @nodoc
class __$$CharacterDetailDomainModelImplCopyWithImpl<$Res>
    extends _$CharacterDetailDomainModelCopyWithImpl<$Res,
        _$CharacterDetailDomainModelImpl>
    implements _$$CharacterDetailDomainModelImplCopyWith<$Res> {
  __$$CharacterDetailDomainModelImplCopyWithImpl(
      _$CharacterDetailDomainModelImpl _value,
      $Res Function(_$CharacterDetailDomainModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? species = null,
    Object? type = null,
    Object? gender = null,
    Object? origin = null,
    Object? location = null,
    Object? image = null,
    Object? episode = null,
  }) {
    return _then(_$CharacterDetailDomainModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      species: null == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as CharacterDetailOriginDomainModel,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as CharacterDetailLocationDomainModel,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      episode: null == episode
          ? _value._episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$CharacterDetailDomainModelImpl implements _CharacterDetailDomainModel {
  const _$CharacterDetailDomainModelImpl(
      {required this.id,
      required this.name,
      required this.status,
      required this.species,
      required this.type,
      required this.gender,
      required this.origin,
      required this.location,
      required this.image,
      required final List<String> episode})
      : _episode = episode;

  @override
  final int id;
  @override
  final String name;
  @override
  final String status;
  @override
  final String species;
  @override
  final String type;
  @override
  final String gender;
  @override
  final CharacterDetailOriginDomainModel origin;
  @override
  final CharacterDetailLocationDomainModel location;
  @override
  final String image;
  final List<String> _episode;
  @override
  List<String> get episode {
    if (_episode is EqualUnmodifiableListView) return _episode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episode);
  }

  @override
  String toString() {
    return 'CharacterDetailDomainModel(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, origin: $origin, location: $location, image: $image, episode: $episode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterDetailDomainModelImpl &&
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
  _$$CharacterDetailDomainModelImplCopyWith<_$CharacterDetailDomainModelImpl>
      get copyWith => __$$CharacterDetailDomainModelImplCopyWithImpl<
          _$CharacterDetailDomainModelImpl>(this, _$identity);
}

abstract class _CharacterDetailDomainModel
    implements CharacterDetailDomainModel {
  const factory _CharacterDetailDomainModel(
      {required final int id,
      required final String name,
      required final String status,
      required final String species,
      required final String type,
      required final String gender,
      required final CharacterDetailOriginDomainModel origin,
      required final CharacterDetailLocationDomainModel location,
      required final String image,
      required final List<String> episode}) = _$CharacterDetailDomainModelImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get status;
  @override
  String get species;
  @override
  String get type;
  @override
  String get gender;
  @override
  CharacterDetailOriginDomainModel get origin;
  @override
  CharacterDetailLocationDomainModel get location;
  @override
  String get image;
  @override
  List<String> get episode;
  @override
  @JsonKey(ignore: true)
  _$$CharacterDetailDomainModelImplCopyWith<_$CharacterDetailDomainModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharacterDetailOriginDomainModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterDetailOriginDomainModelCopyWith<CharacterDetailOriginDomainModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDetailOriginDomainModelCopyWith<$Res> {
  factory $CharacterDetailOriginDomainModelCopyWith(
          CharacterDetailOriginDomainModel value,
          $Res Function(CharacterDetailOriginDomainModel) then) =
      _$CharacterDetailOriginDomainModelCopyWithImpl<$Res,
          CharacterDetailOriginDomainModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$CharacterDetailOriginDomainModelCopyWithImpl<$Res,
        $Val extends CharacterDetailOriginDomainModel>
    implements $CharacterDetailOriginDomainModelCopyWith<$Res> {
  _$CharacterDetailOriginDomainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterDetailOriginDomainModelImplCopyWith<$Res>
    implements $CharacterDetailOriginDomainModelCopyWith<$Res> {
  factory _$$CharacterDetailOriginDomainModelImplCopyWith(
          _$CharacterDetailOriginDomainModelImpl value,
          $Res Function(_$CharacterDetailOriginDomainModelImpl) then) =
      __$$CharacterDetailOriginDomainModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$CharacterDetailOriginDomainModelImplCopyWithImpl<$Res>
    extends _$CharacterDetailOriginDomainModelCopyWithImpl<$Res,
        _$CharacterDetailOriginDomainModelImpl>
    implements _$$CharacterDetailOriginDomainModelImplCopyWith<$Res> {
  __$$CharacterDetailOriginDomainModelImplCopyWithImpl(
      _$CharacterDetailOriginDomainModelImpl _value,
      $Res Function(_$CharacterDetailOriginDomainModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$CharacterDetailOriginDomainModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CharacterDetailOriginDomainModelImpl
    implements _CharacterDetailOriginDomainModel {
  const _$CharacterDetailOriginDomainModelImpl(
      {required this.name, required this.url});

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'CharacterDetailOriginDomainModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterDetailOriginDomainModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterDetailOriginDomainModelImplCopyWith<
          _$CharacterDetailOriginDomainModelImpl>
      get copyWith => __$$CharacterDetailOriginDomainModelImplCopyWithImpl<
          _$CharacterDetailOriginDomainModelImpl>(this, _$identity);
}

abstract class _CharacterDetailOriginDomainModel
    implements CharacterDetailOriginDomainModel {
  const factory _CharacterDetailOriginDomainModel(
      {required final String name,
      required final String url}) = _$CharacterDetailOriginDomainModelImpl;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$CharacterDetailOriginDomainModelImplCopyWith<
          _$CharacterDetailOriginDomainModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharacterDetailLocationDomainModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CharacterDetailLocationDomainModelCopyWith<
          CharacterDetailLocationDomainModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDetailLocationDomainModelCopyWith<$Res> {
  factory $CharacterDetailLocationDomainModelCopyWith(
          CharacterDetailLocationDomainModel value,
          $Res Function(CharacterDetailLocationDomainModel) then) =
      _$CharacterDetailLocationDomainModelCopyWithImpl<$Res,
          CharacterDetailLocationDomainModel>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$CharacterDetailLocationDomainModelCopyWithImpl<$Res,
        $Val extends CharacterDetailLocationDomainModel>
    implements $CharacterDetailLocationDomainModelCopyWith<$Res> {
  _$CharacterDetailLocationDomainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterDetailLocationDomainModelImplCopyWith<$Res>
    implements $CharacterDetailLocationDomainModelCopyWith<$Res> {
  factory _$$CharacterDetailLocationDomainModelImplCopyWith(
          _$CharacterDetailLocationDomainModelImpl value,
          $Res Function(_$CharacterDetailLocationDomainModelImpl) then) =
      __$$CharacterDetailLocationDomainModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$CharacterDetailLocationDomainModelImplCopyWithImpl<$Res>
    extends _$CharacterDetailLocationDomainModelCopyWithImpl<$Res,
        _$CharacterDetailLocationDomainModelImpl>
    implements _$$CharacterDetailLocationDomainModelImplCopyWith<$Res> {
  __$$CharacterDetailLocationDomainModelImplCopyWithImpl(
      _$CharacterDetailLocationDomainModelImpl _value,
      $Res Function(_$CharacterDetailLocationDomainModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$CharacterDetailLocationDomainModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CharacterDetailLocationDomainModelImpl
    implements _CharacterDetailLocationDomainModel {
  const _$CharacterDetailLocationDomainModelImpl(
      {required this.name, required this.url});

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'CharacterDetailLocationDomainModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterDetailLocationDomainModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterDetailLocationDomainModelImplCopyWith<
          _$CharacterDetailLocationDomainModelImpl>
      get copyWith => __$$CharacterDetailLocationDomainModelImplCopyWithImpl<
          _$CharacterDetailLocationDomainModelImpl>(this, _$identity);
}

abstract class _CharacterDetailLocationDomainModel
    implements CharacterDetailLocationDomainModel {
  const factory _CharacterDetailLocationDomainModel(
      {required final String name,
      required final String url}) = _$CharacterDetailLocationDomainModelImpl;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$CharacterDetailLocationDomainModelImplCopyWith<
          _$CharacterDetailLocationDomainModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
