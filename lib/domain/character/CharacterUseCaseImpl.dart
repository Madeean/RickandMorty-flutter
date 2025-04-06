import 'package:rickandmortyapp/domain/character/CharacterRepository.dart';
import 'package:rickandmortyapp/domain/character/CharacterUseCase.dart';
import 'package:rickandmortyapp/domain/character/model/CharacterDomainModel.dart';
import 'package:rickandmortyapp/utils/RequestState.dart';

class CharacterUseCaseImpl implements CharacterUseCase {
  final CharacterRepository repository;

  CharacterUseCaseImpl(this.repository);

  @override
  Stream<RequestState<CharacterDomainModel>> getAllCharacter(
      String name, String status, String species, String type, String gender) {
    return repository.getAllCharacter(name, status, species, type, gender);
  }
}
