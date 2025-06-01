import 'package:rick_and_morty_new/domain/episode/model/EpisodeDomainModel.dart';
import 'package:rick_and_morty_new/utils/RequestState.dart';

abstract class EpisodeRepository {
  Stream<RequestState<EpisodeDomainModel>> getAllEpisode(String name, int page);

  Stream<RequestState<List<EpisodeDetailDomainModel>>> getEpisodeById(
    String id,
  );
}
