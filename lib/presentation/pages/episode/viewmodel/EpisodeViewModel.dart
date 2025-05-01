import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmortyapp/di/Injection.dart';
import 'package:rickandmortyapp/domain/episode/EpisodeUseCase.dart';
import 'package:rickandmortyapp/domain/episode/model/EpisodeDomainModel.dart';
import 'package:rickandmortyapp/presentation/pages/episode/viewmodel/state/EpisodeState.dart';
import 'package:rickandmortyapp/utils/RequestState.dart';

class EpisodeViewModel extends StateNotifier<EpisodeState> {
  final EpisodeUseCase _useCase;
  int _currentPage = 1;
  bool _isFetching = false;
  bool _hasMore = true;

  EpisodeViewModel(this._useCase) : super(const EpisodeState());

  void fetchEpisodes(String name, {bool isLoadMore = false}) {
    if (_isFetching || (!_hasMore && isLoadMore)) return;

    _isFetching = true;
    if (!isLoadMore) {
      _currentPage = 1;
      _hasMore = true;
      state = state.copyWith(episode: const RequestState.loading());
    }

    _useCase.getAllEpisode(name, _currentPage).listen((result) {
      result.when(
        success: (data) {
          final oldResults =
              isLoadMore && state.episode is Success<EpisodeDomainModel>
                  ? (state.episode as Success<EpisodeDomainModel>).data.results
                  : [];

          final List<EpisodeDetailDomainModel> combinedResults = [
            ...oldResults,
            ...data.results
          ];

          const pageSize = 20;
          _hasMore = data.results.isNotEmpty && data.results.length == pageSize;
          if (_hasMore) {
            _currentPage++;
          }

          state = state.copyWith(
            episode: RequestState.success(
              data.copyWith(results: combinedResults),
            ),
          );

          _isFetching = false;
        },
        error: (e) {
          final oldResults =
              isLoadMore && state.episode is Success<EpisodeDomainModel>
                  ? (state.episode as Success<EpisodeDomainModel>).data.results
                  : [];

          if (oldResults.isEmpty) {
            state = state.copyWith(episode: RequestState.error(e));
          } else {
            _hasMore = false;
          }

          _isFetching = false;
        },
        loading: () {},
        idle: () {},
      );
    });
  }

  RequestState<EpisodeDomainModel> getStateEpisode() {
    return state.episode;
  }

  void loadMore(String name) {
    if (!_isFetching && _hasMore) {
      fetchEpisodes(name, isLoadMore: true);
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

final episodeViewModelProvider =
    StateNotifierProvider<EpisodeViewModel, EpisodeState>((ref) {
  final useCase = sl<EpisodeUseCase>();
  return EpisodeViewModel(useCase);
});
