// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'CharacterState.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CharacterState {
  RequestState<CharacterDomainModel> get character =>
      throw _privateConstructorUsedError;

  /// Create a copy of CharacterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharacterStateCopyWith<CharacterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStateCopyWith<$Res> {
  factory $CharacterStateCopyWith(CharacterState value,
      $Res Function(CharacterState) then,) = _$CharacterStateCopyWithImpl<
      $Res,
      CharacterState>;
  @useResult
  $Res call({RequestState<CharacterDomainModel> character});

  $RequestStateCopyWith<CharacterDomainModel, $Res> get character;
}

/// @nodoc
class _$CharacterStateCopyWithImpl<$Res, $Val extends CharacterState>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharacterState
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
                        as RequestState<CharacterDomainModel>,
          )
          as $Val,
    );
  }

  /// Create a copy of CharacterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RequestStateCopyWith<CharacterDomainModel, $Res> get character {
    return $RequestStateCopyWith<CharacterDomainModel, $Res>(_value.character, (
      value,
    ) {
      return _then(_value.copyWith(character: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CharacterStateImplCopyWith<$Res>
    implements $CharacterStateCopyWith<$Res> {
  factory _$$CharacterStateImplCopyWith(
    _$CharacterStateImpl value,
    $Res Function(_$CharacterStateImpl) then,
  ) = __$$CharacterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RequestState<CharacterDomainModel> character});

  @override
  $RequestStateCopyWith<CharacterDomainModel, $Res> get character;
}

/// @nodoc
class __$$CharacterStateImplCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterStateImpl>
    implements _$$CharacterStateImplCopyWith<$Res> {
  __$$CharacterStateImplCopyWithImpl(_$CharacterStateImpl _value,
      $Res Function(_$CharacterStateImpl) _then,) : super(_value, _then);

  /// Create a copy of CharacterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? character = null}) {
    return _then(
      _$CharacterStateImpl(
        character:
            null == character
                ? _value.character
                : character // ignore: cast_nullable_to_non_nullable
                    as RequestState<CharacterDomainModel>,
      ),
    );
  }
}

/// @nodoc

class _$CharacterStateImpl implements _CharacterState {
  const _$CharacterStateImpl({this.character = const RequestState.idle()});

  @override
  @JsonKey()
  final RequestState<CharacterDomainModel> character;

  @override
  String toString() {
    return 'CharacterState(character: $character)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterStateImpl &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character);

  /// Create a copy of CharacterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterStateImplCopyWith<_$CharacterStateImpl> get copyWith =>
      __$$CharacterStateImplCopyWithImpl<_$CharacterStateImpl>(
        this,
        _$identity,
      );
}

abstract class _CharacterState implements CharacterState {
  const factory _CharacterState({
    final RequestState<CharacterDomainModel> character,
  }) = _$CharacterStateImpl;

  @override
  RequestState<CharacterDomainModel> get character;

  /// Create a copy of CharacterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CharacterStateImplCopyWith<_$CharacterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
