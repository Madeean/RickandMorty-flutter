import 'package:rickandmortyapp/domain/episode/EpisodeRepository.dart';
import 'package:rickandmortyapp/domain/episode/EpisodeUseCase.dart';
import 'package:rickandmortyapp/domain/episode/model/EpisodeDomainModel.dart';
import 'package:rickandmortyapp/utils/RequestState.dart';

class EpisodeUseCaseImpl implements EpisodeUseCase {
  final EpisodeRepository repository;

  EpisodeUseCaseImpl(this.repository);

  @override
  Stream<RequestState<EpisodeDomainModel>> getAllEpisode(String name) {
    return repository.getAllEpisode(name);
  }
}