import 'package:rickandmortyapp/domain/episode/model/EpisodeDomainModel.dart';
import 'package:rickandmortyapp/utils/RequestState.dart';

abstract class EpisodeRepository {
  Stream<RequestState<EpisodeDomainModel>> getAllEpisode(String name);
}