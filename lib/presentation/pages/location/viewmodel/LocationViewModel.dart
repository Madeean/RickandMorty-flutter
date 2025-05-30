import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_new/di/Injection.dart';
import 'package:rick_and_morty_new/domain/location/model/LocationDomainModel.dart';
import 'package:rick_and_morty_new/presentation/pages/location/viewmodel/state/LocationState.dart';
import 'package:rick_and_morty_new/utils/RequestState.dart';

import '../../../../domain/location/LocationUseCase.dart';

class LocationViewModel extends StateNotifier<LocationState> {
  final LocationUseCase _useCase;
  int _currentPage = 1;
  bool _isFetching = false;
  bool _hasMore = true;

  LocationViewModel(this._useCase) : super(const LocationState());

  void fetchLocations(String name, String type, String dimension,
      {bool isLoadMore = false}) {
    if (_isFetching || (!_hasMore && isLoadMore)) return;

    _isFetching = true;
    if (!isLoadMore) {
      _currentPage = 1;
      _hasMore = true;
      state = state.copyWith(location: const RequestState.loading());
    }

    _useCase.getAllLocation(name, type, dimension, _currentPage).listen((result) {
      result.when(
          success: (data) {
            final oldResults = isLoadMore && state.location is Success<LocationDomainModel>
                ? (state.location as Success<LocationDomainModel>).data.results
                : [];

            final List<LocationDetailDomainModel> combinedResults = [...oldResults, ...data.results];

            const pageSize = 20;
            _hasMore = data.results.isNotEmpty && data.results.length == pageSize;
            if (_hasMore) {
              _currentPage++;
            }

            state = state.copyWith(
              location: RequestState.success(
                data.copyWith(results: combinedResults),
              ),
            );

            _isFetching = false;
          },
          error: (e) {
            final oldResults = isLoadMore && state.location is Success<LocationDomainModel>
                ? (state.location as Success<LocationDomainModel>).data.results
                : [];

            if (oldResults.isEmpty) {
              state = state.copyWith(location: RequestState.error(e));
            } else {
              _hasMore = false;
            }

            _isFetching = false;
          },
          loading: () {},
          idle: () {}
      );
    });
  }

  RequestState<LocationDomainModel> getStateLocation() {
    return state.location;
  }

  void loadMore(String name, String type, String dimension) {
    if (!_isFetching && _hasMore) {
      fetchLocations(name, type, dimension, isLoadMore: true);
    }
  }

  void resetPagination() {
    _currentPage = 1;
    _isFetching = false;
    _hasMore = true;
  }

  bool get hasMore => _hasMore;

  bool get isFetching => _isFetching;
}

final locationViewModelProvider =
    StateNotifierProvider<LocationViewModel, LocationState>((ref) {
  final useCase = sl<LocationUseCase>();
  return LocationViewModel(useCase);
});
