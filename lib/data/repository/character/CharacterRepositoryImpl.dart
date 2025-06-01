import 'package:rick_and_morty_new/data/network/Network.dart';
import 'package:rick_and_morty_new/data/repository/character/model/CharacterResponse.dart';
import 'package:rick_and_morty_new/data/utils/ApiRequest.dart';
import 'package:rick_and_morty_new/domain/character/CharacterRepository.dart';
import 'package:rick_and_morty_new/domain/character/model/CharacterDomainModel.dart';
import 'package:rick_and_morty_new/utils/RequestState.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final Network network;

  CharacterRepositoryImpl(this.network);

  @override
  Stream<RequestState<CharacterDomainModel>> getAllCharacter(String name,
      String status,
      String species,
      String type,
      String gender,
      int page,) {
    return apiRequest<CharacterResponse, CharacterDomainModel>(
      request:
          () => network.dio.get(
            '/character',
            queryParameters: {
              'name': name,
              'status': status,
              'species': species,
              'type': type,
              'gender': gender,
              'page': page,
            },
          ),
      fromJson: (json) => CharacterResponse.fromJson(json),
      toDomain: (res) => res.toDomain(),
      copyWithSuccessMessage:
          (domain) => domain.copyWith(message: 'Success Get All Character'),
    );
  }

  @override
  Stream<RequestState<List<CharacterDetailDomainModel>>> getCharacterById(
    String id,
  ) {
    print("MASUK API HTTP");
    return apiRequest<CharacterResponse, List<CharacterDetailDomainModel>>(
      request: () => network.dio.get('/character/$id'),
      fromJson: (json) {
        print("JSON Input: $json");
        return CharacterResponse.fromListJson(json);
      },
      toDomain: (res) => res.toListDetailDomain(),
      copyWithSuccessMessage: (domain) => domain,
    );
  }
}
