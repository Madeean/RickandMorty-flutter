import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_new/domain/character/model/CharacterDomainModel.dart';
import 'package:rick_and_morty_new/presentation/pages/character/detail/viewmodel/CharacterDetailViewModel.dart';
import 'package:rick_and_morty_new/presentation/pages/character/detail/viewmodel/state/CharacterDetailState.dart';
import 'package:rick_and_morty_new/utils/RequestState.dart';

import '../../../../domain/episode/model/EpisodeDomainModel.dart';

class CharacterDetailControllerState {
  final RequestState<List<EpisodeDetailDomainModel>> dataEpisodeState;
  final bool isFavorite;

  CharacterDetailControllerState({
    required this.dataEpisodeState,
    required this.isFavorite,
  });

  factory CharacterDetailControllerState.initial() {
    return CharacterDetailControllerState(
      dataEpisodeState: const RequestState.idle(),
      isFavorite: false,
    );
  }

  CharacterDetailControllerState copyWith({
    RequestState<List<EpisodeDetailDomainModel>>? dataEpisodeState,
    bool? isFavorite,
  }) {
    return CharacterDetailControllerState(
      dataEpisodeState: dataEpisodeState ?? this.dataEpisodeState,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}

class CharacterDetailController
    extends StateNotifier<CharacterDetailControllerState> {
  final Ref ref;
  final CharacterDetailViewModel viewModel;
  final CharacterDetailDomainModel character;

  final ScrollController scrollController = ScrollController();

  CharacterDetailController(this.ref, this.viewModel, this.character)
    : super(CharacterDetailControllerState.initial()) {
    ref.listen<CharacterDetailState>(characterDetailViewModelProvider, (
      prev,
      next,
    ) {
      state = state.copyWith(dataEpisodeState: viewModel.getStateEpisode());
    });
  }

  void fetchCharacter(String id) {
    viewModel.fetchEpisodeById(id);
  }

  void initData() {
    if (character.episode.isNotEmpty) {
      final ids =
          '${character.episode.map((url) => url.split('/').last).where((id) => id.isNotEmpty).join(',')},';

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

final characterDetailControllerProvider = StateNotifierProvider.family<
  CharacterDetailController,
  CharacterDetailControllerState,
  CharacterDetailDomainModel
>((ref, character) {
  final viewModel = ref.read(characterDetailViewModelProvider.notifier);
  final controller = CharacterDetailController(ref, viewModel, character);

  WidgetsBinding.instance.addPostFrameCallback((_) {
    controller.initData();
  });

  ref.onDispose(() {
    controller.dispose();
  });

  return controller;
});
