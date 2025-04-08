import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmortyapp/di/Injection.dart';
import 'package:rickandmortyapp/domain/character/CharacterUseCase.dart';
import 'package:rickandmortyapp/domain/character/model/CharacterDomainModel.dart';
import 'package:rickandmortyapp/presentation/pages/character/viewmodel/state/CharacterState.dart';
import 'package:rickandmortyapp/utils/RequestState.dart';

class CharacterViewModel extends StateNotifier<CharacterState> {
  final CharacterUseCase _useCase;
  int _currentPage = 1;
  bool _isFetching = false;
  bool _hasMore = true;

  CharacterViewModel(this._useCase) : super(const CharacterState());

  void fetchCharacters(
      String name, String status, String species, String type, String gender,
      {bool isLoadMore = false}) {
    if (_isFetching || (!_hasMore && isLoadMore)) return;

    _isFetching = true;
    if (!isLoadMore) {
      _currentPage = 1;
      _hasMore = true;
      state = state.copyWith(character: const RequestState.loading());
    }

    _useCase
        .getAllCharacter(name, status, species, type, gender, _currentPage)
        .listen((result) {
      result.when(
        success: (data) {
          final oldResults = isLoadMore &&
                  state.character is Success<CharacterDomainModel>
              ? (state.character as Success<CharacterDomainModel>).data.results
              : [];

          final List<CharacterDetailDomainModel> combinedResults = [
            ...oldResults,
            ...data.results
          ];

          if (data.results.isEmpty) {
            _hasMore = false;
          } else {
            _currentPage++;
          }

          state = state.copyWith(
            character: RequestState.success(
              data.copyWith(results: combinedResults),
            ),
          );

          _isFetching = false;
        },
        idle: () {},
        loading: () {},
        error: (e) {
          final oldResults = isLoadMore &&
                  state.character is Success<CharacterDomainModel>
              ? (state.character as Success<CharacterDomainModel>).data.results
              : [];

          if (oldResults.isEmpty) {
            state = state.copyWith(character: RequestState.error(e));
          } else {
            _hasMore = false;
          }

          _isFetching = false;
        },
      );
    });
  }

  RequestState<CharacterDomainModel> getStateCharacter() {
    return state.character;
  }

  void loadMore(
      String name, String status, String species, String type, String gender) {
    if (!_isFetching && _hasMore) {
      fetchCharacters(name, status, species, type, gender, isLoadMore: true);
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

final characterViewModelProvider =
    StateNotifierProvider<CharacterViewModel, CharacterState>((ref) {
  final useCase = sl<CharacterUseCase>();
  return CharacterViewModel(useCase);
});
