import 'package:rick_and_morty_new/data/network/Network.dart';
import 'package:rick_and_morty_new/data/repository/episode/model/EpisodeResponse.dart';
import 'package:rick_and_morty_new/data/utils/ApiRequest.dart';
import 'package:rick_and_morty_new/domain/episode/EpisodeRepository.dart';
import 'package:rick_and_morty_new/domain/episode/model/EpisodeDomainModel.dart';
import 'package:rick_and_morty_new/utils/RequestState.dart';

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

  @override
  Stream<RequestState<List<EpisodeDetailDomainModel>>> getEpisodeById(
      String id) {
    return apiRequest<EpisodeResponse, List<EpisodeDetailDomainModel>>(
      request: () => network.dio.get('/episode/$id'),
      fromJson: (json) {
        print("JSON Input: $json");
        return EpisodeResponse.fromListJson(json);
      },
      toDomain: (res) => res.toListDetailDomain(),
      copyWithSuccessMessage: (domain) => domain,
    );
  }
}
