// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CharacterDetailState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CharacterDetailState {
  RequestState<List<EpisodeDetailDomainModel>> get episode =>
      throw _privateConstructorUsedError;

  /// Create a copy of CharacterDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharacterDetailStateCopyWith<CharacterDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterDetailStateCopyWith<$Res> {
  factory $CharacterDetailStateCopyWith(
    CharacterDetailState value,
    $Res Function(CharacterDetailState) then,
  ) = _$CharacterDetailStateCopyWithImpl<$Res, CharacterDetailState>;

  @useResult
  $Res call({RequestState<List<EpisodeDetailDomainModel>> episode});

  $RequestStateCopyWith<List<EpisodeDetailDomainModel>, $Res> get episode;
}

/// @nodoc
class _$CharacterDetailStateCopyWithImpl<
  $Res,
  $Val extends CharacterDetailState
>
    implements $CharacterDetailStateCopyWith<$Res> {
  _$CharacterDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharacterDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? episode = null}) {
    return _then(
      _value.copyWith(
            episode:
                null == episode
                    ? _value.episode
                    : episode // ignore: cast_nullable_to_non_nullable
                        as RequestState<List<EpisodeDetailDomainModel>>,
          )
          as $Val,
    );
  }

  /// Create a copy of CharacterDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestStateCopyWith<List<EpisodeDetailDomainModel>, $Res> get episode {
    return $RequestStateCopyWith<List<EpisodeDetailDomainModel>, $Res>(
      _value.episode,
      (value) {
        return _then(_value.copyWith(episode: value) as $Val);
      },
    );
  }
}

/// @nodoc
abstract class _$$CharacterDetailStateImplCopyWith<$Res>
    implements $CharacterDetailStateCopyWith<$Res> {
  factory _$$CharacterDetailStateImplCopyWith(
    _$CharacterDetailStateImpl value,
    $Res Function(_$CharacterDetailStateImpl) then,
  ) = __$$CharacterDetailStateImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({RequestState<List<EpisodeDetailDomainModel>> episode});

  @override
  $RequestStateCopyWith<List<EpisodeDetailDomainModel>, $Res> get episode;
}

/// @nodoc
class __$$CharacterDetailStateImplCopyWithImpl<$Res>
    extends _$CharacterDetailStateCopyWithImpl<$Res, _$CharacterDetailStateImpl>
    implements _$$CharacterDetailStateImplCopyWith<$Res> {
  __$$CharacterDetailStateImplCopyWithImpl(
    _$CharacterDetailStateImpl _value,
    $Res Function(_$CharacterDetailStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CharacterDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? episode = null}) {
    return _then(
      _$CharacterDetailStateImpl(
        episode:
            null == episode
                ? _value.episode
                : episode // ignore: cast_nullable_to_non_nullable
                    as RequestState<List<EpisodeDetailDomainModel>>,
      ),
    );
  }
}

/// @nodoc

class _$CharacterDetailStateImpl implements _CharacterDetailState {
  const _$CharacterDetailStateImpl({this.episode = const RequestState.idle()});

  @override
  @JsonKey()
  final RequestState<List<EpisodeDetailDomainModel>> episode;

  @override
  String toString() {
    return 'CharacterDetailState(episode: $episode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterDetailStateImpl &&
            (identical(other.episode, episode) || other.episode == episode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, episode);

  /// Create a copy of CharacterDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterDetailStateImplCopyWith<_$CharacterDetailStateImpl>
  get copyWith =>
      __$$CharacterDetailStateImplCopyWithImpl<_$CharacterDetailStateImpl>(
        this,
        _$identity,
      );
}

abstract class _CharacterDetailState implements CharacterDetailState {
  const factory _CharacterDetailState({
    final RequestState<List<EpisodeDetailDomainModel>> episode,
  }) = _$CharacterDetailStateImpl;

  @override
  RequestState<List<EpisodeDetailDomainModel>> get episode;

  /// Create a copy of CharacterDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterDetailStateImplCopyWith<_$CharacterDetailStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
