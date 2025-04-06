import 'package:rickandmortyapp/data/network/Network.dart';
import 'package:rickandmortyapp/data/repository/character/model/CharacterResponse.dart';
import 'package:rickandmortyapp/data/utils/ApiRequest.dart';
import 'package:rickandmortyapp/domain/character/CharacterRepository.dart';
import 'package:rickandmortyapp/domain/character/model/CharacterDomainModel.dart';
import 'package:rickandmortyapp/utils/RequestState.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final Network network;

  CharacterRepositoryImpl(this.network);

  @override
  Stream<RequestState<CharacterDomainModel>> getAllCharacter(
      String name, String status, String species, String type, String gender) {
    return apiRequest<CharacterResponse, CharacterDomainModel>(
      request: () => network.dio.get('/character', queryParameters: {
        'name': name,
        'status': status,
        'species': species,
        'type': type,
        'gender': gender
      }),
      fromJson: (json) => CharacterResponse.fromJson(json),
      toDomain: (res) => res.toDomain(),
      copyWithSuccessMessage: (domain) =>
          domain.copyWith(message: 'Success Get All Character'),
    );
  }
}
