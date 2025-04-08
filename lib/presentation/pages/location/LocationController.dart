import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmortyapp/presentation/pages/location/viewmodel/LocationViewModel.dart';

class LocationController {
  final LocationViewModel viewModel;

  late ScrollController scrollController;

  LocationController(this.viewModel);

  void fetchAllLocation() {
    viewModel.fetchLocations('','','');
  }

  void dispose() {
    scrollController.dispose();
  }

  bool shouldFetchAllLocation() {
    if (viewModel
        .getStateLocation()
        .isIdle ||
        viewModel
            .getStateLocation()
            .isLoading) {
      return true;
    }
    return false;
  }

  void initScrollController() {
    scrollController = ScrollController()..addListener(_onScroll);
  }

  void _onScroll() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 300) {
      viewModel.loadMore('','','');
    }
  }

  ScrollController get scrollC => scrollController;
}

final locationControllerProvider = Provider<LocationController>((ref) {
  final viewModel = ref.read(locationViewModelProvider.notifier);
  final controller = LocationController(viewModel);

  ref.onDispose(() {
    controller.dispose();
  });

  return controller;
});