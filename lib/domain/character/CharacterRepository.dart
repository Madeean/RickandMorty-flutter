import 'package:rickandmortyapp/domain/character/model/CharacterDomainModel.dart';
import 'package:rickandmortyapp/utils/RequestState.dart';

abstract class CharacterRepository {
  Stream<RequestState<CharacterDomainModel>> getAllCharacter(String name,
      String status, String species, String type, String gender, int page);
}
