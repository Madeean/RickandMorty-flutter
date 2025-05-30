import 'package:rick_and_morty_new/domain/character/model/CharacterDomainModel.dart';
import 'package:rick_and_morty_new/utils/RequestState.dart';

abstract class CharacterUseCase {
  Stream<RequestState<CharacterDomainModel>> getAllCharacter(String name,
      String status, String species, String type, String gender, int page);
}
