import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

import 'viewmodel/EpisodeViewModel.dart';

class EpisodeController {
  final EpisodeViewModel viewModel;

  final TextEditingController searchController = TextEditingController();
  late ScrollController scrollController;

  final _searchSubject = BehaviorSubject<String>();
  late StreamSubscription _subscription;

  EpisodeController(this.viewModel) {
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
      viewModel.loadMore(searchController.text.trim());
    }
  }

  void onSearchChanged(String value) {
    _searchSubject.add(value);
  }

  void dispose() {
    searchController.dispose();
    scrollController.dispose();
    _subscription.cancel();
    _searchSubject.close();
  }

  void fetchAllEpisode() {
    viewModel.fetchEpisodes(searchController.text.trim());
  }

  bool shouldFetchAllEpisode() {
    if (viewModel.getStateEpisode().isIdle ||
        viewModel.getStateEpisode().isLoading) {
      return true;
    }
    return false;
  }

  ScrollController get scrollC => scrollController;
}

final episodeControllerProvider = Provider<EpisodeController>((ref) {
  final viewModel = ref.read(episodeViewModelProvider.notifier);
  final controller = EpisodeController(viewModel);

  ref.onDispose(() {
    controller.dispose();
  });

  return controller;
});
