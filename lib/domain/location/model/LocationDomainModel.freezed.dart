// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'LocationDomainModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LocationDomainModel {
  String get message => throw _privateConstructorUsedError;
  List<LocationDetailDomainModel> get results =>
      throw _privateConstructorUsedError;

  /// Create a copy of LocationDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationDomainModelCopyWith<LocationDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDomainModelCopyWith<$Res> {
  factory $LocationDomainModelCopyWith(LocationDomainModel value,
      $Res Function(LocationDomainModel) then,) = _$LocationDomainModelCopyWithImpl<
      $Res,
      LocationDomainModel>;
  @useResult
  $Res call({String message, List<LocationDetailDomainModel> results});
}

/// @nodoc
class _$LocationDomainModelCopyWithImpl<$Res, $Val extends LocationDomainModel>
    implements $LocationDomainModelCopyWith<$Res> {
  _$LocationDomainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? results = null}) {
    return _then(
      _value.copyWith(
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            results:
                null == results
                    ? _value.results
                    : results // ignore: cast_nullable_to_non_nullable
                        as List<LocationDetailDomainModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocationDomainModelImplCopyWith<$Res>
    implements $LocationDomainModelCopyWith<$Res> {
  factory _$$LocationDomainModelImplCopyWith(
    _$LocationDomainModelImpl value,
    $Res Function(_$LocationDomainModelImpl) then,
  ) = __$$LocationDomainModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, List<LocationDetailDomainModel> results});
}

/// @nodoc
class __$$LocationDomainModelImplCopyWithImpl<$Res>
    extends _$LocationDomainModelCopyWithImpl<$Res, _$LocationDomainModelImpl>
    implements _$$LocationDomainModelImplCopyWith<$Res> {
  __$$LocationDomainModelImplCopyWithImpl(
    _$LocationDomainModelImpl _value,
    $Res Function(_$LocationDomainModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? results = null}) {
    return _then(
      _$LocationDomainModelImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        results:
            null == results
                ? _value._results
                : results // ignore: cast_nullable_to_non_nullable
                    as List<LocationDetailDomainModel>,
      ),
    );
  }
}

/// @nodoc

class _$LocationDomainModelImpl implements _LocationDomainModel {
  const _$LocationDomainModelImpl({
    required this.message,
    required final List<LocationDetailDomainModel> results,
  }) : _results = results;

  @override
  final String message;
  final List<LocationDetailDomainModel> _results;
  @override
  List<LocationDetailDomainModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'LocationDomainModel(message: $message, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationDomainModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    message,
    const DeepCollectionEquality().hash(_results),
  );

  /// Create a copy of LocationDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationDomainModelImplCopyWith<_$LocationDomainModelImpl> get copyWith =>
      __$$LocationDomainModelImplCopyWithImpl<_$LocationDomainModelImpl>(
        this,
        _$identity,
      );
}

abstract class _LocationDomainModel implements LocationDomainModel {
  const factory _LocationDomainModel({
    required final String message,
    required final List<LocationDetailDomainModel> results,
  }) = _$LocationDomainModelImpl;

  @override
  String get message;
  @override
  List<LocationDetailDomainModel> get results;

  /// Create a copy of LocationDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationDomainModelImplCopyWith<_$LocationDomainModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationDetailDomainModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get dimension => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  List<String> get residents => throw _privateConstructorUsedError;

  /// Create a copy of LocationDetailDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationDetailDomainModelCopyWith<LocationDetailDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDetailDomainModelCopyWith<$Res> {
  factory $LocationDetailDomainModelCopyWith(
    LocationDetailDomainModel value,
    $Res Function(LocationDetailDomainModel) then,
  ) = _$LocationDetailDomainModelCopyWithImpl<$Res, LocationDetailDomainModel>;
  @useResult
  $Res call({
    int id,
    String name,
    String type,
    String dimension,
    String created,
    String url,
    List<String> residents,
  });
}

/// @nodoc
class _$LocationDetailDomainModelCopyWithImpl<
  $Res,
  $Val extends LocationDetailDomainModel
>
    implements $LocationDetailDomainModelCopyWith<$Res> {
  _$LocationDetailDomainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationDetailDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? dimension = null,
    Object? created = null,
    Object? url = null,
    Object? residents = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String,
            dimension:
                null == dimension
                    ? _value.dimension
                    : dimension // ignore: cast_nullable_to_non_nullable
                        as String,
            created:
                null == created
                    ? _value.created
                    : created // ignore: cast_nullable_to_non_nullable
                        as String,
            url:
                null == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String,
            residents:
                null == residents
                    ? _value.residents
                    : residents // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LocationDetailDomainModelImplCopyWith<$Res>
    implements $LocationDetailDomainModelCopyWith<$Res> {
  factory _$$LocationDetailDomainModelImplCopyWith(
    _$LocationDetailDomainModelImpl value,
    $Res Function(_$LocationDetailDomainModelImpl) then,
  ) = __$$LocationDetailDomainModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String type,
    String dimension,
    String created,
    String url,
    List<String> residents,
  });
}

/// @nodoc
class __$$LocationDetailDomainModelImplCopyWithImpl<$Res>
    extends
        _$LocationDetailDomainModelCopyWithImpl<
          $Res,
          _$LocationDetailDomainModelImpl
        >
    implements _$$LocationDetailDomainModelImplCopyWith<$Res> {
  __$$LocationDetailDomainModelImplCopyWithImpl(
    _$LocationDetailDomainModelImpl _value,
    $Res Function(_$LocationDetailDomainModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LocationDetailDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? dimension = null,
    Object? created = null,
    Object? url = null,
    Object? residents = null,
  }) {
    return _then(
      _$LocationDetailDomainModelImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String,
        dimension:
            null == dimension
                ? _value.dimension
                : dimension // ignore: cast_nullable_to_non_nullable
                    as String,
        created:
            null == created
                ? _value.created
                : created // ignore: cast_nullable_to_non_nullable
                    as String,
        url:
            null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String,
        residents:
            null == residents
                ? _value._residents
                : residents // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$LocationDetailDomainModelImpl implements _LocationDetailDomainModel {
  const _$LocationDetailDomainModelImpl({
    required this.id,
    required this.name,
    required this.type,
    required this.dimension,
    required this.created,
    required this.url,
    required final List<String> residents,
  }) : _residents = residents;

  @override
  final int id;
  @override
  final String name;
  @override
  final String type;
  @override
  final String dimension;
  @override
  final String created;
  @override
  final String url;
  final List<String> _residents;
  @override
  List<String> get residents {
    if (_residents is EqualUnmodifiableListView) return _residents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_residents);
  }

  @override
  String toString() {
    return 'LocationDetailDomainModel(id: $id, name: $name, type: $type, dimension: $dimension, created: $created, url: $url, residents: $residents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationDetailDomainModelImpl &&
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

  /// Create a copy of LocationDetailDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationDetailDomainModelImplCopyWith<_$LocationDetailDomainModelImpl>
  get copyWith => __$$LocationDetailDomainModelImplCopyWithImpl<
    _$LocationDetailDomainModelImpl
  >(this, _$identity);
}

abstract class _LocationDetailDomainModel implements LocationDetailDomainModel {
  const factory _LocationDetailDomainModel({
    required final int id,
    required final String name,
    required final String type,
    required final String dimension,
    required final String created,
    required final String url,
    required final List<String> residents,
  }) = _$LocationDetailDomainModelImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get type;
  @override
  String get dimension;
  @override
  String get created;
  @override
  String get url;
  @override
  List<String> get residents;

  /// Create a copy of LocationDetailDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationDetailDomainModelImplCopyWith<_$LocationDetailDomainModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
