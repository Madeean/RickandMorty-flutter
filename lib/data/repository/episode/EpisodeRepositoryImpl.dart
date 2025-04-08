import 'package:rickandmortyapp/data/network/Network.dart';
import 'package:rickandmortyapp/data/repository/episode/model/EpisodeResponse.dart';
import 'package:rickandmortyapp/data/utils/ApiRequest.dart';
import 'package:rickandmortyapp/domain/episode/EpisodeRepository.dart';
import 'package:rickandmortyapp/domain/episode/model/EpisodeDomainModel.dart';
import 'package:rickandmortyapp/utils/RequestState.dart';

class EpisodeRepositoryImpl implements EpisodeRepository {
  final Network network;

  EpisodeRepositoryImpl(this.network);

  @override
  Stream<RequestState<EpisodeDomainModel>> getAllEpisode(String name, int page) {
    return apiRequest<EpisodeResponse, EpisodeDomainModel>(
      request: () =>
          network.dio.get('/episode', queryParameters: {'name': name, 'page': page}),
      fromJson: (json) => EpisodeResponse.fromJson(json),
      toDomain: (res) => res.toDomain(),
      copyWithSuccessMessage: (domain) =>
          domain.copyWith(message: 'Success Get All Episode'),
    );
  }
}
