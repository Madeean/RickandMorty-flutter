import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmortyapp/di/Injection.dart';
import 'package:rickandmortyapp/domain/episode/EpisodeUseCase.dart';
import 'package:rickandmortyapp/presentation/pages/episode/viewmodel/state/EpisodeState.dart';
import 'package:rickandmortyapp/utils/RequestState.dart';

class EpisodeViewModel extends StateNotifier<EpisodeState> {
  final EpisodeUseCase _useCase;

  EpisodeViewModel(this._useCase) : super(const EpisodeState());

  void fetchEpisodes(String name) {
    state = state.copyWith(episode: const RequestState.loading());

    state = state.copyWith(episode: const RequestState.loading());

    _useCase.getAllEpisode(name).listen((result) {
      state = state.copyWith(episode: result);
    });
  }
}

final episodeViewModelProvider =
StateNotifierProvider<EpisodeViewModel, EpisodeState>((ref) {
  final useCase = sl<EpisodeUseCase>();
  return EpisodeViewModel(useCase);
});