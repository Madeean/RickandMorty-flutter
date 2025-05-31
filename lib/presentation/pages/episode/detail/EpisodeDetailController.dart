import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_new/domain/character/model/CharacterDomainModel.dart';
import 'package:rick_and_morty_new/domain/episode/model/EpisodeDomainModel.dart';
import 'package:rick_and_morty_new/presentation/pages/episode/detail/viewmodel/EpisodeDetailViewModel.dart';
import 'package:rick_and_morty_new/presentation/pages/episode/detail/viewmodel/state/EpisodeDetailState.dart';
import 'package:rick_and_morty_new/utils/RequestState.dart';

class EpisodeDetailControllerState {
  final RequestState<List<CharacterDetailDomainModel>> dataCharacterState;
  final bool isFavorite;

  EpisodeDetailControllerState({
    required this.dataCharacterState,
    required this.isFavorite,
  });

  factory EpisodeDetailControllerState.initial() {
    return EpisodeDetailControllerState(
      dataCharacterState: const RequestState.idle(),
      isFavorite: false,
    );
  }

  EpisodeDetailControllerState copyWith({
    RequestState<List<CharacterDetailDomainModel>>? dataCharacterState,
    bool? isFavorite,
  }) {
    return EpisodeDetailControllerState(
      dataCharacterState: dataCharacterState ?? this.dataCharacterState,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}

class EpisodeDetailController
    extends StateNotifier<EpisodeDetailControllerState> {
  final Ref ref;
  final EpisodeDetailViewModel viewModel;
  final EpisodeDetailDomainModel episode;

  final ScrollController scrollController = ScrollController();

  EpisodeDetailController(this.ref, this.viewModel, this.episode)
    : super(EpisodeDetailControllerState.initial()) {
    ref.listen<EpisodeDetailState>(episodeDetailViewModelProvider, (
      prev,
      next,
    ) {
      state = state.copyWith(dataCharacterState: viewModel.getStateCharacter());
    });
  }

  void fetchCharacter(String id) {
    viewModel.fetchCharacterById(id);
  }

  void initData() {
    if (episode.characterList.isNotEmpty) {
      final ids = episode.characterList
          .map((url) => url.split('/').last)
          .where((id) => id.isNotEmpty)
          .join(',');
      if (ids.isNotEmpty) {
        fetchCharacter(ids);
      }
    }
  }

  void onClickFavorite() {
    state = state.copyWith(isFavorite: !state.isFavorite);
  }

  ScrollController get scrollC => scrollController;

  bool get isFavorite => state.isFavorite;
}

final episodeDetailControllerProvider = StateNotifierProvider.family<
  EpisodeDetailController,
  EpisodeDetailControllerState,
  EpisodeDetailDomainModel
>((ref, episode) {
  final viewModel = ref.read(episodeDetailViewModelProvider.notifier);
  final controller = EpisodeDetailController(ref, viewModel, episode);

  WidgetsBinding.instance.addPostFrameCallback((_) {
    controller.initData();
  });

  ref.onDispose(() {
    controller.dispose();
  });

  return controller;
});
