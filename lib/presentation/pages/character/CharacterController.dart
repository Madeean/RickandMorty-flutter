import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmortyapp/presentation/pages/character/viewmodel/CharacterViewModel.dart';
import 'package:rxdart/rxdart.dart';

class CharacterController {
  final CharacterViewModel viewModel;

  late ScrollController scrollController;

  // final TextEditingController searchController = TextEditingController();
  // final _searchSubject = BehaviorSubject<String>();
  // late StreamSubscription _subscription;

  CharacterController(this.viewModel);

  // void onSearchChanged(String value) {
  //   _searchSubject.add(value);
  // }

  void fetchAllCharacter() {
    viewModel.fetchCharacters('', '', "", '', '');
  }

  void initScrollController() {
    scrollController = ScrollController()..addListener(_onScroll);
  }

  void _onScroll() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 500) {
      viewModel.loadMore('','','','','');
    }
  }

  void dispose() {
    scrollController.dispose();
    // searchController.dispose();
    // _subscription.cancel();
    // _searchSubject.close();
  }

  bool shouldFetchAllCharacter() {
    if (viewModel
        .getStateCharacter()
        .isIdle ||
        viewModel
            .getStateCharacter()
            .isLoading) {
      return true;
    }
    return false;
  }

  ScrollController get scrollC => scrollController;
}

final episodeControllerProvider = Provider<CharacterController>((ref) {
  final viewModel = ref.read(characterViewModelProvider.notifier);
  final controller = CharacterController(viewModel);

  ref.onDispose(() {
    controller.dispose();
  });

  return controller;
});