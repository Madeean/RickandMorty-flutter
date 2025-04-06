import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rickandmortyapp/domain/character/model/CharacterDomainModel.dart';
import 'package:rickandmortyapp/utils/RequestState.dart';

part 'CharacterState.freezed.dart';

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState({
    @Default(RequestState.idle()) RequestState<CharacterDomainModel> character,
  }) = _CharacterState;
}