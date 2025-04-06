import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmortyapp/di/Injection.dart';
import 'package:rickandmortyapp/domain/location/model/LocationDomainModel.dart';
import 'package:rickandmortyapp/presentation/pages/location/viewmodel/state/LocationState.dart';
import 'package:rickandmortyapp/utils/RequestState.dart';

import '../../../../domain/location/LocationUseCase.dart';

class LocationViewModel extends StateNotifier<LocationState> {
  final LocationUseCase _useCase;

  LocationViewModel(this._useCase) : super(const LocationState());

  void fetchLocations(String name, String type, String dimension) {
    state = state.copyWith(location: const RequestState.loading());

    _useCase.getAllLocation(name, type, dimension).listen((result) {
      state = state.copyWith(location: result);
    });
  }

  RequestState<LocationDomainModel> getStateLocation() {
    return state.location;
  }
}

final locationViewModelProvider =
StateNotifierProvider<LocationViewModel, LocationState>((ref) {
  final useCase = sl<LocationUseCase>();
  return LocationViewModel(useCase);
});