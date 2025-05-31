import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty_new/domain/character/model/CharacterDomainModel.dart';
import 'package:rick_and_morty_new/presentation/pages/episode/detail/viewmodel/state/EpisodeDetailState.dart';

import '../../../../../di/Injection.dart';
import '../../../../../domain/character/CharacterUseCase.dart';
import '../../../../../utils/RequestState.dart';

class EpisodeDetailViewModel extends StateNotifier<EpisodeDetailState> {
  final CharacterUseCase _useCase;

  EpisodeDetailViewModel(this._useCase) : super(const EpisodeDetailState());

  void fetchCharacterById(String id) {
    print("MASUK HIT VIEW MODEL");
    state = state.copyWith(character: RequestState.loading());

    _useCase.getCharacterById(id).listen((result) {
      result.when(
        idle: () {},
        loading: () {},
        success: (data) {
          print("HASIL SUCCESS $data}");
          state = state.copyWith(character: RequestState.success(data));
        },
        error: (e) {
          print("HASIL ERROR $e}");
          state = state.copyWith(character: RequestState.error(e));
        },
      );
    });
  }

  RequestState<List<CharacterDetailDomainModel>> getStateCharacter() {
    return state.character;
  }
}

final episodeDetailViewModelProvider =
    StateNotifierProvider<EpisodeDetailViewModel, EpisodeDetailState>((ref) {
      final useCase = sl<CharacterUseCase>();
      return EpisodeDetailViewModel(useCase);
    });
