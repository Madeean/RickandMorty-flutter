import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_new/domain/character/model/CharacterDomainModel.dart';
import 'package:rick_and_morty_new/utils/RequestState.dart';

part 'CharacterState.freezed.dart';

@freezed
class CharacterState with _$CharacterState {
  const factory CharacterState({
    @Default(RequestState.idle()) RequestState<CharacterDomainModel> character,
  }) = _CharacterState;
}