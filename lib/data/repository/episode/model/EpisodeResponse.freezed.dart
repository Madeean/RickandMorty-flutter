// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'EpisodeResponse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EpisodeResponse _$EpisodeResponseFromJson(Map<String, dynamic> json) {
  return _EpisodeResponse.fromJson(json);
}

/// @nodoc
mixin _$EpisodeResponse {
  String? get message => throw _privateConstructorUsedError;
  List<EpisodeDetailResponse>? get results =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeResponseCopyWith<EpisodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeResponseCopyWith<$Res> {
  factory $EpisodeResponseCopyWith(
          EpisodeResponse value, $Res Function(EpisodeResponse) then) =
      _$EpisodeResponseCopyWithImpl<$Res, EpisodeResponse>;
  @useResult
  $Res call({String? message, List<EpisodeDetailResponse>? results});
}

/// @nodoc
class _$EpisodeResponseCopyWithImpl<$Res, $Val extends EpisodeResponse>
    implements $EpisodeResponseCopyWith<$Res> {
  _$EpisodeResponseCopyWithImpl(this._value, this._then);

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
              as List<EpisodeDetailResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpisodeResponseImplCopyWith<$Res>
    implements $EpisodeResponseCopyWith<$Res> {
  factory _$$EpisodeResponseImplCopyWith(_$EpisodeResponseImpl value,
          $Res Function(_$EpisodeResponseImpl) then) =
      __$$EpisodeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, List<EpisodeDetailResponse>? results});
}

/// @nodoc
class __$$EpisodeResponseImplCopyWithImpl<$Res>
    extends _$EpisodeResponseCopyWithImpl<$Res, _$EpisodeResponseImpl>
    implements _$$EpisodeResponseImplCopyWith<$Res> {
  __$$EpisodeResponseImplCopyWithImpl(
      _$EpisodeResponseImpl _value, $Res Function(_$EpisodeResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? results = freezed,
  }) {
    return _then(_$EpisodeResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<EpisodeDetailResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodeResponseImpl implements _EpisodeResponse {
  const _$EpisodeResponseImpl(
      {this.message, final List<EpisodeDetailResponse>? results})
      : _results = results;

  factory _$EpisodeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodeResponseImplFromJson(json);

  @override
  final String? message;
  final List<EpisodeDetailResponse>? _results;
  @override
  List<EpisodeDetailResponse>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EpisodeResponse(message: $message, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeResponseImpl &&
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
  _$$EpisodeResponseImplCopyWith<_$EpisodeResponseImpl> get copyWith =>
      __$$EpisodeResponseImplCopyWithImpl<_$EpisodeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodeResponseImplToJson(
      this,
    );
  }
}

abstract class _EpisodeResponse implements EpisodeResponse {
  const factory _EpisodeResponse(
      {final String? message,
      final List<EpisodeDetailResponse>? results}) = _$EpisodeResponseImpl;

  factory _EpisodeResponse.fromJson(Map<String, dynamic> json) =
      _$EpisodeResponseImpl.fromJson;

  @override
  String? get message;
  @override
  List<EpisodeDetailResponse>? get results;
  @override
  @JsonKey(ignore: true)
  _$$EpisodeResponseImplCopyWith<_$EpisodeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EpisodeDetailResponse _$EpisodeDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _EpisodeDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$EpisodeDetailResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'air_date')
  String? get airDate => throw _privateConstructorUsedError;
  String? get episode => throw _privateConstructorUsedError;
  String? get created => throw _privateConstructorUsedError;
  @JsonKey(name: 'characters')
  List<String>? get characterList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EpisodeDetailResponseCopyWith<EpisodeDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeDetailResponseCopyWith<$Res> {
  factory $EpisodeDetailResponseCopyWith(EpisodeDetailResponse value,
          $Res Function(EpisodeDetailResponse) then) =
      _$EpisodeDetailResponseCopyWithImpl<$Res, EpisodeDetailResponse>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'air_date') String? airDate,
      String? episode,
      String? created,
      @JsonKey(name: 'characters') List<String>? characterList});
}

/// @nodoc
class _$EpisodeDetailResponseCopyWithImpl<$Res,
        $Val extends EpisodeDetailResponse>
    implements $EpisodeDetailResponseCopyWith<$Res> {
  _$EpisodeDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? airDate = freezed,
    Object? episode = freezed,
    Object? created = freezed,
    Object? characterList = freezed,
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
      airDate: freezed == airDate
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
      characterList: freezed == characterList
          ? _value.characterList
          : characterList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpisodeDetailResponseImplCopyWith<$Res>
    implements $EpisodeDetailResponseCopyWith<$Res> {
  factory _$$EpisodeDetailResponseImplCopyWith(
          _$EpisodeDetailResponseImpl value,
          $Res Function(_$EpisodeDetailResponseImpl) then) =
      __$$EpisodeDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'air_date') String? airDate,
      String? episode,
      String? created,
      @JsonKey(name: 'characters') List<String>? characterList});
}

/// @nodoc
class __$$EpisodeDetailResponseImplCopyWithImpl<$Res>
    extends _$EpisodeDetailResponseCopyWithImpl<$Res,
        _$EpisodeDetailResponseImpl>
    implements _$$EpisodeDetailResponseImplCopyWith<$Res> {
  __$$EpisodeDetailResponseImplCopyWithImpl(_$EpisodeDetailResponseImpl _value,
      $Res Function(_$EpisodeDetailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? airDate = freezed,
    Object? episode = freezed,
    Object? created = freezed,
    Object? characterList = freezed,
  }) {
    return _then(_$EpisodeDetailResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      airDate: freezed == airDate
          ? _value.airDate
          : airDate // ignore: cast_nullable_to_non_nullable
              as String?,
      episode: freezed == episode
          ? _value.episode
          : episode // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
      characterList: freezed == characterList
          ? _value._characterList
          : characterList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodeDetailResponseImpl implements _EpisodeDetailResponse {
  const _$EpisodeDetailResponseImpl(
      {this.id,
      this.name,
      @JsonKey(name: 'air_date') this.airDate,
      this.episode,
      this.created,
      @JsonKey(name: 'characters') final List<String>? characterList})
      : _characterList = characterList;

  factory _$EpisodeDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodeDetailResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'air_date')
  final String? airDate;
  @override
  final String? episode;
  @override
  final String? created;
  final List<String>? _characterList;
  @override
  @JsonKey(name: 'characters')
  List<String>? get characterList {
    final value = _characterList;
    if (value == null) return null;
    if (_characterList is EqualUnmodifiableListView) return _characterList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EpisodeDetailResponse(id: $id, name: $name, airDate: $airDate, episode: $episode, created: $created, characterList: $characterList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeDetailResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.airDate, airDate) || other.airDate == airDate) &&
            (identical(other.episode, episode) || other.episode == episode) &&
            (identical(other.created, created) || other.created == created) &&
            const DeepCollectionEquality()
                .equals(other._characterList, _characterList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, airDate, episode,
      created, const DeepCollectionEquality().hash(_characterList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeDetailResponseImplCopyWith<_$EpisodeDetailResponseImpl>
      get copyWith => __$$EpisodeDetailResponseImplCopyWithImpl<
          _$EpisodeDetailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodeDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _EpisodeDetailResponse implements EpisodeDetailResponse {
  const factory _EpisodeDetailResponse(
          {final int? id,
          final String? name,
          @JsonKey(name: 'air_date') final String? airDate,
          final String? episode,
          final String? created,
          @JsonKey(name: 'characters') final List<String>? characterList}) =
      _$EpisodeDetailResponseImpl;

  factory _EpisodeDetailResponse.fromJson(Map<String, dynamic> json) =
      _$EpisodeDetailResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'air_date')
  String? get airDate;
  @override
  String? get episode;
  @override
  String? get created;
  @override
  @JsonKey(name: 'characters')
  List<String>? get characterList;
  @override
  @JsonKey(ignore: true)
  _$$EpisodeDetailResponseImplCopyWith<_$EpisodeDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
