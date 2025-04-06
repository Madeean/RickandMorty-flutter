import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmortyapp/di/Injection.dart';
import 'package:rickandmortyapp/domain/character/CharacterUseCase.dart';
import 'package:rickandmortyapp/domain/character/model/CharacterDomainModel.dart';
import 'package:rickandmortyapp/presentation/pages/character/viewmodel/state/CharacterState.dart';
import 'package:rickandmortyapp/utils/RequestState.dart';

class CharacterViewModel extends StateNotifier<CharacterState> {
  final CharacterUseCase _useCase;

  CharacterViewModel(this._useCase) : super(const CharacterState());

  void fetchCharacters(String name, String status, String species, String type, String gender) {
    state = state.copyWith(character: const RequestState.loading());

    _useCase.getAllCharacter(name, status, species, type, gender).listen((result) {
      state = state.copyWith(character: result);
    });
  }

  RequestState<CharacterDomainModel> getStateCharacter() {
    return state.character;
  }
}

final characterViewModelProvider =
StateNotifierProvider<CharacterViewModel, CharacterState>((ref) {
  final useCase = sl<CharacterUseCase>();
  return CharacterViewModel(useCase);
});