import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmortyapp/presentation/pages/character/viewmodel/CharacterViewModel.dart';
import 'package:rxdart/rxdart.dart';

class CharacterController {
  final CharacterViewModel viewModel;

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

  void dispose() {
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
}

final episodeControllerProvider = Provider<CharacterController>((ref) {
  final viewModel = ref.read(characterViewModelProvider.notifier);
  final controller = CharacterController(viewModel);

  ref.onDispose(() {
    controller.dispose();
  });

  return controller;
});