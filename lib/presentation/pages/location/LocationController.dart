import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_new/presentation/pages/location/viewmodel/LocationViewModel.dart';
import 'package:rick_and_morty_new/presentation/pages/location/viewmodel/state/LocationState.dart';

import '../../../domain/location/model/LocationDomainModel.dart';
import '../../../utils/RequestState.dart';

class LocationControllerState {
  final RequestState<LocationDomainModel> dataLocationState;
  final bool isFetching;
  final bool hasMore;

  LocationControllerState({
    required this.dataLocationState,
    required this.isFetching,
    required this.hasMore,
  });

  factory LocationControllerState.initial() {
    return LocationControllerState(
      dataLocationState: const RequestState.idle(),
      isFetching: false,
      hasMore: true,
    );
  }

  LocationControllerState copyWith({
    RequestState<LocationDomainModel>? dataLocationState,
    bool? isFetching,
    bool? hasMore,
  }) {
    return LocationControllerState(
      dataLocationState: dataLocationState ?? this.dataLocationState,
      isFetching: isFetching ?? this.isFetching,
      hasMore: hasMore ?? this.hasMore,
    );
  }
}

class LocationController extends StateNotifier<LocationControllerState> {
  final Ref ref;
  final LocationViewModel viewModel;

  late ScrollController scrollController;

  LocationController(this.ref, this.viewModel)
      : super(LocationControllerState.initial()) {
    initScrollController();

    Future.microtask(() {
      if (shouldFetchAllLocation()) {
        fetchAllLocation();
      }
    });

    ref.listen<LocationState>(locationViewModelProvider, (prev, next) {
      _syncState();
    });
  }

  void _syncState() {
    state = state.copyWith(
      dataLocationState: viewModel.getStateLocation(),
      isFetching: viewModel.isFetching,
      hasMore: viewModel.hasMore,
    );
  }

  void fetchAllLocation() {
    viewModel.fetchLocations('', '', '');
  }

  bool shouldFetchAllLocation() {
    final stateLocation = viewModel.getStateLocation();
    return stateLocation.isIdle || stateLocation.isLoading;
  }

  void initScrollController() {
    scrollController = ScrollController()..addListener(_onScroll);
  }

  void _onScroll() {
    if (scrollController.position.pixels >=
        scrollController.position.maxScrollExtent - 300) {
      if (!state.hasMore) return;
      viewModel.loadMore('', '', '');
    }
  }

  ScrollController get scrollC => scrollController;

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}

final locationControllerProvider =
    StateNotifierProvider<LocationController, LocationControllerState>((ref) {
  final viewModel = ref.read(locationViewModelProvider.notifier);
  final controller = LocationController(ref, viewModel);

  ref.onDispose(() {
    controller.dispose();
  });

  return controller;
});
