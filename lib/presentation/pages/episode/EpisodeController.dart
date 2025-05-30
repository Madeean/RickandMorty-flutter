import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_new/presentation/pages/episode/viewmodel/state/EpisodeState.dart';
import 'package:rxdart/rxdart.dart';

import '../../../domain/episode/model/EpisodeDomainModel.dart';
import '../../../utils/RequestState.dart';
import 'viewmodel/EpisodeViewModel.dart';

class EpisodeControllerState {
  final RequestState<EpisodeDomainModel> dataEpisodeState;
  final bool isFetching;
  final bool hasMore;

  EpisodeControllerState({
    required this.dataEpisodeState,
    required this.isFetching,
    required this.hasMore,
  });

  factory EpisodeControllerState.initial() {
    return EpisodeControllerState(
      dataEpisodeState: const RequestState.idle(),
      isFetching: false,
      hasMore: true,
    );
  }

  EpisodeControllerState copyWith({
    RequestState<EpisodeDomainModel>? dataEpisodeState,
    bool? isFetching,
    bool? hasMore,
  }) {
    return EpisodeControllerState(
      dataEpisodeState: dataEpisodeState ?? this.dataEpisodeState,
      isFetching: isFetching ?? this.isFetching,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}

class EpisodeController extends StateNotifier<EpisodeControllerState> {
  final Ref ref;
  final EpisodeViewModel viewModel;
  final TextEditingController searchController = TextEditingController();
  late final ScrollController scrollController;

  final _searchSubject = BehaviorSubject<String>();
  late final StreamSubscription _subscription;

  EpisodeController(this.ref, this.viewModel)
      : super(EpisodeControllerState.initial()) {
    initSearch();
    initScrollController();

    Future.microtask(() {
      if (shouldFetchAllEpisode()) {
        fetchAllEpisode();
      }
    });

    ref.listen<EpisodeState>(episodeViewModelProvider, (previous, next) {
      _syncState();
    });
  }

  void initSearch() {
    _subscription = _searchSubject
        .debounceTime(const Duration(milliseconds: 300))
        .distinct()
        .listen((keyword) {
      viewModel.fetchEpisodes(keyword.trim());
    });
  }

  void initScrollController() {
    scrollController = ScrollController()..addListener(_onScroll);
  }

  void _onScroll() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 300) {
      if (!state.hasMore) return;
      viewModel.loadMore(searchController.text.trim());
    }
  }

  void onSearchChanged(String value) {
    _searchSubject.add(value);
  }

  void fetchAllEpisode() {
    viewModel.fetchEpisodes(searchController.text.trim());
  }

  bool shouldFetchAllEpisode() {
    final stateEpisode = viewModel.getStateEpisode();
    return stateEpisode.isIdle || stateEpisode.isLoading;
  }

  void _syncState() {
    state = state.copyWith(
      dataEpisodeState: viewModel.getStateEpisode(),
      isFetching: viewModel.isFetching,
      hasMore: viewModel.hasMore,
    );
  }

  ScrollController get scrollC => scrollController;

  @override
  void dispose() {
    searchController.dispose();
    scrollController.dispose();
    _subscription.cancel();
    _searchSubject.close();
    super.dispose();
  }
}

final episodeControllerProvider =
    StateNotifierProvider<EpisodeController, EpisodeControllerState>((ref) {
  final viewModel = ref.read(episodeViewModelProvider.notifier);
  final controller = EpisodeController(ref, viewModel);

  ref.onDispose(() {
    controller.dispose();
  });

  return controller;
});
