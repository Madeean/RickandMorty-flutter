import 'package:rickandmortyapp/domain/episode/model/EpisodeDomainModel.dart';

import '../../utils/RequestState.dart';

abstract class EpisodeUseCase {
  Stream<RequestState<EpisodeDomainModel>> getAllEpisode(String name);
}