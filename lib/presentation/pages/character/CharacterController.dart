import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_new/presentation/pages/character/viewmodel/CharacterViewModel.dart';
import 'package:rick_and_morty_new/presentation/pages/character/viewmodel/state/CharacterState.dart';

import '../../../domain/character/model/CharacterDomainModel.dart';
import '../../../utils/RequestState.dart';

class CharacterControllerState {
  final RequestState<CharacterDomainModel> dataCharacterState;
  final bool isFetching;
  final bool hasMore;
  final String status;
  final String gender;

  CharacterControllerState({
    required this.dataCharacterState,
    required this.isFetching,
    required this.hasMore,
    required this.status,
    required this.gender,
  });

  factory CharacterControllerState.initial() {
    return CharacterControllerState(
      dataCharacterState: const RequestState.idle(),
      isFetching: false,
      hasMore: true,
      status: 'All',
      gender: 'All',
    );
  }

  CharacterControllerState copyWith({
    RequestState<CharacterDomainModel>? dataCharacterState,
    bool? isFetching,
    bool? hasMore,
    String? status,
    String? gender,
  }) {
    return CharacterControllerState(
      dataCharacterState: dataCharacterState ?? this.dataCharacterState,
      isFetching: isFetching ?? this.isFetching,
      hasMore: hasMore ?? this.hasMore,
      status: status ?? this.status,
      gender: gender ?? this.gender,
    );
  }
}

class CharacterController extends StateNotifier<CharacterControllerState> {
  final Ref ref;
  final CharacterViewModel viewModel;
  final TextEditingController nameTextController = TextEditingController();
  final TextEditingController nameSpeciesController = TextEditingController();
  final TextEditingController nameTypeController = TextEditingController();

  late final ScrollController scrollController;

  CharacterController(this.ref, this.viewModel)
      : super(CharacterControllerState.initial()) {
    initScrollController();

    Future.microtask(() {
      if (shouldFetchAllCharacter()) {
        fetchAllCharacter();
      }
    });

    ref.listen<CharacterState>(characterViewModelProvider, (prev, next) {
      _syncState();
    });
  }

  void _syncState() {
    state = state.copyWith(
      dataCharacterState: viewModel.getStateCharacter(),
      isFetching: viewModel.isFetching,
      hasMore: viewModel.hasMore,
    );
  }

  void fetchAllCharacter() {
    viewModel.fetchCharacters(
        nameTextController.text.trim(),
        state.status == 'All' ? '' : state.status.toLowerCase(),
        nameSpeciesController.text.trim(),
        nameTypeController.text.trim(),
        state.gender == 'All' ? '' : state.gender.toLowerCase());
  }

  void initScrollController() {
    scrollController = ScrollController()..addListener(_onScroll);
  }

  void _onScroll() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 500) {
      if (!state.hasMore) return;
      viewModel.loadMore(nameTextController.text.trim(),
          state.status == 'All' ? '' : state.status.toLowerCase(),
          nameSpeciesController.text.trim(),
          nameTypeController.text.trim(),
          state.gender == 'All' ? '' : state.gender.toLowerCase());
    }
  }

  void resetFilter() {
    resetController();
    handleDataStatus('All');
    handleDataGender('All');
  }

  void resetController() {
    nameTextController.clear();
    nameSpeciesController.clear();
    nameTypeController.clear();
  }

  bool shouldFetchAllCharacter() {
    final stateCharacter = viewModel.getStateCharacter();
    return stateCharacter.isIdle || stateCharacter.isLoading;
  }

  void handleDataStatus(String value) {
    state = state.copyWith(status: value);
  }

  void handleDataGender(String value) {
    state = state.copyWith(gender: value);
  }

  @override
  void dispose() {
    scrollController.dispose();
    nameTextController.dispose();
    nameSpeciesController.dispose();
    nameTypeController.dispose();
    super.dispose();
  }

  ScrollController get scrollC => scrollController;
  TextEditingController get nameTextC => nameTextController;
  TextEditingController get nameSpeciesC => nameSpeciesController;
  TextEditingController get nameTypeC => nameTypeController;

  List<String> get getAllStatus => ['All', 'Alive', 'Dead', 'Unknown'];

  List<String> get getAllGender =>
      ['All', 'Female', 'Male', 'Genderless', 'Unknown'];
}

final characterControllerProvider =
    StateNotifierProvider<CharacterController, CharacterControllerState>((ref) {
  final viewModel = ref.read(characterViewModelProvider.notifier);
  final controller = CharacterController(ref, viewModel);

  ref.onDispose(() {
    controller.dispose();
  });

  return controller;
});
