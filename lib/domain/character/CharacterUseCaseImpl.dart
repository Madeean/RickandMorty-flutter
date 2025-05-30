import 'package:rick_and_morty_new/domain/character/CharacterRepository.dart';
import 'package:rick_and_morty_new/domain/character/CharacterUseCase.dart';
import 'package:rick_and_morty_new/domain/character/model/CharacterDomainModel.dart';
import 'package:rick_and_morty_new/utils/RequestState.dart';

class CharacterUseCaseImpl implements CharacterUseCase {
  final CharacterRepository repository;

  CharacterUseCaseImpl(this.repository);

  @override
  Stream<RequestState<CharacterDomainModel>> getAllCharacter(
      String name, String status, String species, String type, String gender, int page) {
    return repository.getAllCharacter(name, status, species, type, gender, page);
  }
}
