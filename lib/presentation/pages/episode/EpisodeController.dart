import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rxdart/rxdart.dart';

import 'viewmodel/EpisodeViewModel.dart';

class EpisodeController {
  final EpisodeViewModel viewModel;

  final TextEditingController searchController = TextEditingController();
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

  void onSearchChanged(String value) {
    _searchSubject.add(value);
  }

  void dispose() {
    searchController.dispose();
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
}

final episodeControllerProvider = Provider<EpisodeController>((ref) {
  final viewModel = ref.read(episodeViewModelProvider.notifier);
  final controller = EpisodeController(viewModel);

  ref.onDispose(() {
    controller.dispose();
  });

  return controller;
});
