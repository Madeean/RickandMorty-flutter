import 'package:dio/dio.dart';
import 'package:rickandmortyapp/data/network/Network.dart';
import 'package:rickandmortyapp/data/repository/character/model/CharacterResponse.dart';
import 'package:rickandmortyapp/domain/character/CharacterRepository.dart';
import 'package:rickandmortyapp/domain/character/model/CharacterDomainModel.dart';
import 'package:rickandmortyapp/utils/RequestState.dart';
import 'package:rxdart/rxdart.dart';

class CharacterRepositoryImpl implements CharacterRepository {
  final Network network;

  CharacterRepositoryImpl(this.network);

  @override
  Stream<RequestState<CharacterDomainModel>> getAllCharacter(
      String name, String status, String species, String type, String gender) {
    return Rx.defer(() async* {
      yield const RequestState.loading();

      try {
        final response = await network.dio.get(
          '/character',
          queryParameters: {
            'name': name,
            'status': status,
            'species': species,
            'type': type,
            'gender': gender
          },
        );

        if ((response.statusCode ?? 0) ~/ 100 == 2) {
          final json = response.data as Map<String, dynamic>;
          final characterResponse = CharacterResponse.fromJson(json);

          final domainModel = characterResponse.toDomain().copyWith(
                message: 'Success Get All Character',
              );

          yield RequestState.success(domainModel);
        } else {
          final json = response.data as Map<String, dynamic>;
          final errorMessage = json['error'] ?? 'Terjadi kesalahan';

          final CharacterResponse characterResponse =
          CharacterResponse(message: errorMessage, results: []);
          yield RequestState.error(characterResponse.toDomain());
        }
      } catch (e) {
        String errorMessage = 'Terjadi kesalahan';

        if (e is DioException) {
          errorMessage = e.response?.data['error'] ??
              e.message ??
              'Terjadi kesalahan dari server';
        } else {
          errorMessage = e.toString();
        }
        final CharacterResponse characterResponse =
        CharacterResponse(message: errorMessage, results: []);

        yield RequestState.error(characterResponse.toDomain());
      }
    });
  }
}
