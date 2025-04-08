import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmortyapp/presentation/pages/character/viewmodel/CharacterViewModel.dart';
import 'package:rxdart/rxdart.dart';

class CharacterController {
  final CharacterViewModel viewModel;

  late ScrollController scrollController;

  final TextEditingController nameTextController = TextEditingController();
  // final _searchSubject = BehaviorSubject<String>();
  // late StreamSubscription _subscription;

  CharacterController(this.viewModel);

  // void onSearchChanged(String value) {
  //   _searchSubject.add(value);
  // }

  void fetchAllCharacter() {
    viewModel.fetchCharacters(nameTextController.text.trim(), '', "", '', '');
  }

  void initScrollController() {
    scrollController = ScrollController()..addListener(_onScroll);
  }

  void _onScroll() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 500) {
      viewModel.loadMore(nameTextController.text.trim(),'','','','');
    }
  }

  void dispose() {
    scrollController.dispose();
    nameTextController.dispose();
    // searchController.dispose();
    // _subscription.cancel();
    // _searchSubject.close();
  }

  void resetController() {
    nameTextController.clear();
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
  TextEditingController get nameTextC => nameTextController;
}

final episodeControllerProvider = Provider<CharacterController>((ref) {
  final viewModel = ref.read(characterViewModelProvider.notifier);
  final controller = CharacterController(viewModel);

  ref.onDispose(() {
    controller.dispose();
  });

  return controller;
});