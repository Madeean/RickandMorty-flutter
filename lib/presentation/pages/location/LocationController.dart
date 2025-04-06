import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmortyapp/presentation/pages/location/viewmodel/LocationViewModel.dart';

class LocationController {
  final LocationViewModel viewModel;

  LocationController(this.viewModel);

  void fetchAllLocation() {
    viewModel.fetchLocations('','','');
  }

  void dispose() {}

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
}

final locationControllerProvider = Provider<LocationController>((ref) {
  final viewModel = ref.read(locationViewModelProvider.notifier);
  final controller = LocationController(viewModel);

  ref.onDispose(() {
    controller.dispose();
  });

  return controller;
});