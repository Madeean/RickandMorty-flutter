// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'EpisodeDetailState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$EpisodeDetailState {
  RequestState<List<CharacterDetailDomainModel>> get character =>
      throw _privateConstructorUsedError;

  /// Create a copy of EpisodeDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpisodeDetailStateCopyWith<EpisodeDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeDetailStateCopyWith<$Res> {
  factory $EpisodeDetailStateCopyWith(
    EpisodeDetailState value,
    $Res Function(EpisodeDetailState) then,
  ) = _$EpisodeDetailStateCopyWithImpl<$Res, EpisodeDetailState>;

  @useResult
  $Res call({RequestState<List<CharacterDetailDomainModel>> character});

  $RequestStateCopyWith<List<CharacterDetailDomainModel>, $Res> get character;
}

/// @nodoc
class _$EpisodeDetailStateCopyWithImpl<$Res, $Val extends EpisodeDetailState>
    implements $EpisodeDetailStateCopyWith<$Res> {
  _$EpisodeDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpisodeDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? character = null}) {
    return _then(
      _value.copyWith(
            character:
                null == character
                    ? _value.character
                    : character // ignore: cast_nullable_to_non_nullable
                        as RequestState<List<CharacterDetailDomainModel>>,
          )
          as $Val,
    );
  }

  /// Create a copy of EpisodeDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestStateCopyWith<List<CharacterDetailDomainModel>, $Res> get character {
    return $RequestStateCopyWith<List<CharacterDetailDomainModel>, $Res>(
      _value.character,
      (value) {
        return _then(_value.copyWith(character: value) as $Val);
      },
    );
  }
}

/// @nodoc
abstract class _$$EpisodeDetailStateImplCopyWith<$Res>
    implements $EpisodeDetailStateCopyWith<$Res> {
  factory _$$EpisodeDetailStateImplCopyWith(
    _$EpisodeDetailStateImpl value,
    $Res Function(_$EpisodeDetailStateImpl) then,
  ) = __$$EpisodeDetailStateImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({RequestState<List<CharacterDetailDomainModel>> character});

  @override
  $RequestStateCopyWith<List<CharacterDetailDomainModel>, $Res> get character;
}

/// @nodoc
class __$$EpisodeDetailStateImplCopyWithImpl<$Res>
    extends _$EpisodeDetailStateCopyWithImpl<$Res, _$EpisodeDetailStateImpl>
    implements _$$EpisodeDetailStateImplCopyWith<$Res> {
  __$$EpisodeDetailStateImplCopyWithImpl(
    _$EpisodeDetailStateImpl _value,
    $Res Function(_$EpisodeDetailStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EpisodeDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? character = null}) {
    return _then(
      _$EpisodeDetailStateImpl(
        character:
            null == character
                ? _value.character
                : character // ignore: cast_nullable_to_non_nullable
                    as RequestState<List<CharacterDetailDomainModel>>,
      ),
    );
  }
}

/// @nodoc

class _$EpisodeDetailStateImpl implements _EpisodeDetailState {
  const _$EpisodeDetailStateImpl({this.character = const RequestState.idle()});

  @override
  @JsonKey()
  final RequestState<List<CharacterDetailDomainModel>> character;

  @override
  String toString() {
    return 'EpisodeDetailState(character: $character)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeDetailStateImpl &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character);

  /// Create a copy of EpisodeDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeDetailStateImplCopyWith<_$EpisodeDetailStateImpl> get copyWith =>
      __$$EpisodeDetailStateImplCopyWithImpl<_$EpisodeDetailStateImpl>(
        this,
        _$identity,
      );
}

abstract class _EpisodeDetailState implements EpisodeDetailState {
  const factory _EpisodeDetailState({
    final RequestState<List<CharacterDetailDomainModel>> character,
  }) = _$EpisodeDetailStateImpl;

  @override
  RequestState<List<CharacterDetailDomainModel>> get character;

  /// Create a copy of EpisodeDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpisodeDetailStateImplCopyWith<_$EpisodeDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
