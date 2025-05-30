import 'package:rick_and_morty_new/domain/episode/model/EpisodeDomainModel.dart';

import '../../utils/RequestState.dart';

abstract class EpisodeUseCase {
  Stream<RequestState<EpisodeDomainModel>> getAllEpisode(String name, int page);
}