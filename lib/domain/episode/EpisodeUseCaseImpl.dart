import 'package:rick_and_morty_new/domain/episode/EpisodeRepository.dart';
import 'package:rick_and_morty_new/domain/episode/EpisodeUseCase.dart';
import 'package:rick_and_morty_new/domain/episode/model/EpisodeDomainModel.dart';
import 'package:rick_and_morty_new/utils/RequestState.dart';

class EpisodeUseCaseImpl implements EpisodeUseCase {
  final EpisodeRepository repository;

  EpisodeUseCaseImpl(this.repository);

  @override
  Stream<RequestState<EpisodeDomainModel>> getAllEpisode(String name, int page) {
    return repository.getAllEpisode(name, page);
  }

  @override
  Stream<RequestState<List<EpisodeDetailDomainModel>>> getEpisodeById(
      String id) {
    return repository.getEpisodeById(id);
  }
}