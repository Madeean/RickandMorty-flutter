// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'EpisodeDomainModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$EpisodeDomainModel {
  String get message => throw _privateConstructorUsedError;
  List<EpisodeDetailDomainModel> get results =>
      throw _privateConstructorUsedError;

  /// Create a copy of EpisodeDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpisodeDomainModelCopyWith<EpisodeDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeDomainModelCopyWith<$Res> {
  factory $EpisodeDomainModelCopyWith(EpisodeDomainModel value,
      $Res Function(EpisodeDomainModel) then,) = _$EpisodeDomainModelCopyWithImpl<
      $Res,
      EpisodeDomainModel>;
  @useResult
  $Res call({String message, List<EpisodeDetailDomainModel> results});
}

/// @nodoc
class _$EpisodeDomainModelCopyWithImpl<$Res, $Val extends EpisodeDomainModel>
    implements $EpisodeDomainModelCopyWith<$Res> {
  _$EpisodeDomainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpisodeDomainModel
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
                        as List<EpisodeDetailDomainModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EpisodeDomainModelImplCopyWith<$Res>
    implements $EpisodeDomainModelCopyWith<$Res> {
  factory _$$EpisodeDomainModelImplCopyWith(
    _$EpisodeDomainModelImpl value,
    $Res Function(_$EpisodeDomainModelImpl) then,
  ) = __$$EpisodeDomainModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, List<EpisodeDetailDomainModel> results});
}

/// @nodoc
class __$$EpisodeDomainModelImplCopyWithImpl<$Res>
    extends _$EpisodeDomainModelCopyWithImpl<$Res, _$EpisodeDomainModelImpl>
    implements _$$EpisodeDomainModelImplCopyWith<$Res> {
  __$$EpisodeDomainModelImplCopyWithImpl(
    _$EpisodeDomainModelImpl _value,
    $Res Function(_$EpisodeDomainModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EpisodeDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? results = null}) {
    return _then(
      _$EpisodeDomainModelImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        results:
            null == results
                ? _value._results
                : results // ignore: cast_nullable_to_non_nullable
                    as List<EpisodeDetailDomainModel>,
      ),
    );
  }
}

/// @nodoc

class _$EpisodeDomainModelImpl implements _EpisodeDomainModel {
  const _$EpisodeDomainModelImpl({
    required this.message,
    required final List<EpisodeDetailDomainModel> results,
  }) : _results = results;

  @override
  final String message;
  final List<EpisodeDetailDomainModel> _results;
  @override
  List<EpisodeDetailDomainModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'EpisodeDomainModel(message: $message, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeDomainModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    message,
    const DeepCollectionEquality().hash(_results),
  );

  /// Create a copy of EpisodeDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeDomainModelImplCopyWith<_$EpisodeDomainModelImpl> get copyWith =>
      __$$EpisodeDomainModelImplCopyWithImpl<_$EpisodeDomainModelImpl>(
        this,
        _$identity,
      );
}

abstract class _EpisodeDomainModel implements EpisodeDomainModel {
  const factory _EpisodeDomainModel({
    required final String message,
    required final List<EpisodeDetailDomainModel> results,
  }) = _$EpisodeDomainModelImpl;

  @override
  String get message;
  @override
  List<EpisodeDetailDomainModel> get results;

  /// Create a copy of EpisodeDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpisodeDomainModelImplCopyWith<_$EpisodeDomainModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EpisodeDetailDomainModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get airDate => throw _privateConstructorUsedError;
  String get episode => throw _privateConstructorUsedError;
  String get created => throw _privateConstructorUsedError;
  List<String> get characterList => throw _privateConstructorUsedError;

  /// Create a copy of EpisodeDetailDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpisodeDetailDomainModelCopyWith<EpisodeDetailDomainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeDetailDomainModelCopyWith<$Res> {
  factory $EpisodeDetailDomainModelCopyWith(
    EpisodeDetailDomainModel value,
    $Res Function(EpisodeDetailDomainModel) then,
  ) = _$EpisodeDetailDomainModelCopyWithImpl<$Res, EpisodeDetailDomainModel>;
  @useResult
  $Res call({
    int id,
    String name,
    String airDate,
    String episode,
    String created,
    List<String> characterList,
  });
}

/// @nodoc
class _$EpisodeDetailDomainModelCopyWithImpl<
  $Res,
  $Val extends EpisodeDetailDomainModel
>
    implements $EpisodeDetailDomainModelCopyWith<$Res> {
  _$EpisodeDetailDomainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpisodeDetailDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? airDate = null,
    Object? episode = null,
    Object? created = null,
    Object? characterList = null,
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
            airDate:
                null == airDate
                    ? _value.airDate
                    : airDate // ignore: cast_nullable_to_non_nullable
                        as String,
            episode:
                null == episode
                    ? _value.episode
                    : episode // ignore: cast_nullable_to_non_nullable
                        as String,
            created:
                null == created
                    ? _value.created
                    : created // ignore: cast_nullable_to_non_nullable
                        as String,
            characterList:
                null == characterList
                    ? _value.characterList
                    : characterList // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EpisodeDetailDomainModelImplCopyWith<$Res>
    implements $EpisodeDetailDomainModelCopyWith<$Res> {
  factory _$$EpisodeDetailDomainModelImplCopyWith(
    _$EpisodeDetailDomainModelImpl value,
    $Res Function(_$EpisodeDetailDomainModelImpl) then,
  ) = __$$EpisodeDetailDomainModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    String airDate,
    String episode,
    String created,
    List<String> characterList,
  });
}

/// @nodoc
class __$$EpisodeDetailDomainModelImplCopyWithImpl<$Res>
    extends
        _$EpisodeDetailDomainModelCopyWithImpl<
          $Res,
          _$EpisodeDetailDomainModelImpl
        >
    implements _$$EpisodeDetailDomainModelImplCopyWith<$Res> {
  __$$EpisodeDetailDomainModelImplCopyWithImpl(
    _$EpisodeDetailDomainModelImpl _value,
    $Res Function(_$EpisodeDetailDomainModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EpisodeDetailDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? airDate = null,
    Object? episode = null,
    Object? created = null,
    Object? characterList = null,
  }) {
    return _then(
      _$EpisodeDetailDomainModelImpl(
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
        airDate:
            null == airDate
                ? _value.airDate
                : airDate // ignore: cast_nullable_to_non_nullable
                    as String,
        episode:
            null == episode
                ? _value.episode
                : episode // ignore: cast_nullable_to_non_nullable
                    as String,
        created:
            null == created
                ? _value.created
                : created // ignore: cast_nullable_to_non_nullable
                    as String,
        characterList:
            null == characterList
                ? _value._characterList
                : characterList // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$EpisodeDetailDomainModelImpl implements _EpisodeDetailDomainModel {
  const _$EpisodeDetailDomainModelImpl({
    required this.id,
    required this.name,
    required this.airDate,
    required this.episode,
    required this.created,
    required final List<String> characterList,
  }) : _characterList = characterList;

  @override
  final int id;
  @override
  final String name;
  @override
  final String airDate;
  @override
  final String episode;
  @override
  final String created;
  final List<String> _characterList;
  @override
  List<String> get characterList {
    if (_characterList is EqualUnmodifiableListView) return _characterList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characterList);
  }

  @override
  String toString() {
    return 'EpisodeDetailDomainModel(id: $id, name: $name, airDate: $airDate, episode: $episode, created: $created, characterList: $characterList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeDetailDomainModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.airDate, airDate) || other.airDate == airDate) &&
            (identical(other.episode, episode) || other.episode == episode) &&
            (identical(other.created, created) || other.created == created) &&
            const DeepCollectionEquality().equals(
              other._characterList,
              _characterList,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    airDate,
    episode,
    created,
    const DeepCollectionEquality().hash(_characterList),
  );

  /// Create a copy of EpisodeDetailDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeDetailDomainModelImplCopyWith<_$EpisodeDetailDomainModelImpl>
  get copyWith => __$$EpisodeDetailDomainModelImplCopyWithImpl<
    _$EpisodeDetailDomainModelImpl
  >(this, _$identity);
}

abstract class _EpisodeDetailDomainModel implements EpisodeDetailDomainModel {
  const factory _EpisodeDetailDomainModel({
    required final int id,
    required final String name,
    required final String airDate,
    required final String episode,
    required final String created,
    required final List<String> characterList,
  }) = _$EpisodeDetailDomainModelImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get airDate;
  @override
  String get episode;
  @override
  String get created;
  @override
  List<String> get characterList;

  /// Create a copy of EpisodeDetailDomainModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpisodeDetailDomainModelImplCopyWith<_$EpisodeDetailDomainModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
