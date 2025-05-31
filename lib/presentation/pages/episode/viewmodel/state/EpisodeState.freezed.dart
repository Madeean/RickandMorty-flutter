// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'EpisodeState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$EpisodeState {
  RequestState<EpisodeDomainModel> get episode =>
      throw _privateConstructorUsedError;

  /// Create a copy of EpisodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpisodeStateCopyWith<EpisodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeStateCopyWith<$Res> {
  factory $EpisodeStateCopyWith(EpisodeState value,
      $Res Function(EpisodeState) then,) = _$EpisodeStateCopyWithImpl<
      $Res,
      EpisodeState>;
  @useResult
  $Res call({RequestState<EpisodeDomainModel> episode});

  $RequestStateCopyWith<EpisodeDomainModel, $Res> get episode;
}

/// @nodoc
class _$EpisodeStateCopyWithImpl<$Res, $Val extends EpisodeState>
    implements $EpisodeStateCopyWith<$Res> {
  _$EpisodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpisodeState
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
                        as RequestState<EpisodeDomainModel>,
          )
          as $Val,
    );
  }

  /// Create a copy of EpisodeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestStateCopyWith<EpisodeDomainModel, $Res> get episode {
    return $RequestStateCopyWith<EpisodeDomainModel, $Res>(_value.episode, (
      value,
    ) {
      return _then(_value.copyWith(episode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpisodeStateImplCopyWith<$Res>
    implements $EpisodeStateCopyWith<$Res> {
  factory _$$EpisodeStateImplCopyWith(_$EpisodeStateImpl value,
      $Res Function(_$EpisodeStateImpl) then,) = __$$EpisodeStateImplCopyWithImpl<
      $Res>;
  @override
  @useResult
  $Res call({RequestState<EpisodeDomainModel> episode});

  @override
  $RequestStateCopyWith<EpisodeDomainModel, $Res> get episode;
}

/// @nodoc
class __$$EpisodeStateImplCopyWithImpl<$Res>
    extends _$EpisodeStateCopyWithImpl<$Res, _$EpisodeStateImpl>
    implements _$$EpisodeStateImplCopyWith<$Res> {
  __$$EpisodeStateImplCopyWithImpl(_$EpisodeStateImpl _value,
      $Res Function(_$EpisodeStateImpl) _then,) : super(_value, _then);

  /// Create a copy of EpisodeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? episode = null}) {
    return _then(
      _$EpisodeStateImpl(
        episode:
            null == episode
                ? _value.episode
                : episode // ignore: cast_nullable_to_non_nullable
                    as RequestState<EpisodeDomainModel>,
      ),
    );
  }
}

/// @nodoc

class _$EpisodeStateImpl implements _EpisodeState {
  const _$EpisodeStateImpl({this.episode = const RequestState.idle()});

  @override
  @JsonKey()
  final RequestState<EpisodeDomainModel> episode;

  @override
  String toString() {
    return 'EpisodeState(episode: $episode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeStateImpl &&
            (identical(other.episode, episode) || other.episode == episode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, episode);

  /// Create a copy of EpisodeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeStateImplCopyWith<_$EpisodeStateImpl> get copyWith =>
      __$$EpisodeStateImplCopyWithImpl<_$EpisodeStateImpl>(this, _$identity);
}

abstract class _EpisodeState implements EpisodeState {
  const factory _EpisodeState({
    final RequestState<EpisodeDomainModel> episode,
  }) = _$EpisodeStateImpl;

  @override
  RequestState<EpisodeDomainModel> get episode;

  /// Create a copy of EpisodeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpisodeStateImplCopyWith<_$EpisodeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
