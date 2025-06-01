import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_new/di/Injection.dart';
import 'package:rick_and_morty_new/domain/episode/EpisodeUseCase.dart';
import 'package:rick_and_morty_new/domain/episode/model/EpisodeDomainModel.dart';
import 'package:rick_and_morty_new/presentation/pages/character/detail/viewmodel/state/CharacterDetailState.dart';

import '../../../../../utils/RequestState.dart';

class CharacterDetailViewModel extends StateNotifier<CharacterDetailState> {
  final EpisodeUseCase _useCase;

  CharacterDetailViewModel(this._useCase) : super(const CharacterDetailState());

  void fetchEpisodeById(String id) {
    state = state.copyWith(episode: RequestState.loading());

    _useCase.getEpisodeById(id).listen((result) {
      result.when(
        idle: () {},
        loading: () {},
        success: (data) {
          state = state.copyWith(episode: RequestState.success(data));
        },
        error: (e) {
          state = state.copyWith(episode: RequestState.error(e));
        },
      );
    });
  }

  RequestState<List<EpisodeDetailDomainModel>> getStateEpisode() {
    return state.episode;
  }
}

final characterDetailViewModelProvider =
StateNotifierProvider<CharacterDetailViewModel, CharacterDetailState>((ref) {
  final useCase = sl<EpisodeUseCase>();
  return CharacterDetailViewModel(useCase);
});