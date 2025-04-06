import 'package:dio/dio.dart';
import 'package:rickandmortyapp/data/network/Network.dart';
import 'package:rickandmortyapp/data/repository/episode/model/EpisodeResponse.dart';
import 'package:rickandmortyapp/domain/episode/EpisodeRepository.dart';
import 'package:rickandmortyapp/domain/episode/model/EpisodeDomainModel.dart';
import 'package:rickandmortyapp/utils/RequestState.dart';
import 'package:rxdart/rxdart.dart';

class EpisodeRepositoryImpl implements EpisodeRepository {
  final Network network;

  EpisodeRepositoryImpl(this.network);

  @override
  Stream<RequestState<EpisodeDomainModel>> getAllEpisode(String name) {
    return Rx.defer(() async* {
      yield const RequestState.loading();

      try {
        final response = await network.dio.get(
          '/episode',
          queryParameters: {'name': name},
        );

        if ((response.statusCode ?? 0) ~/ 100 == 2) {
          final json = response.data as Map<String, dynamic>;
          final episodeResponse = EpisodeResponse.fromJson(json);

          final domainModel = episodeResponse.toDomain().copyWith(
                message: 'Success Get All Episode',
              );

          yield RequestState.success(domainModel);
        } else {
          final json = response.data as Map<String, dynamic>;
          final errorMessage = json['error'] ?? 'Terjadi kesalahan';

          final EpisodeResponse episodeResponse =
              EpisodeResponse(message: errorMessage, results: []);
          yield RequestState.error(episodeResponse.toDomain());
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
        final EpisodeResponse episodeResponse =
            EpisodeResponse(message: errorMessage, results: []);

        yield RequestState.error(episodeResponse.toDomain());
      }
    });
  }
}
