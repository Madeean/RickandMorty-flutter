import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_new/domain/character/model/CharacterDomainModel.dart';
import 'package:rick_and_morty_new/utils/RequestState.dart';

part 'EpisodeDetailState.freezed.dart';

@freezed
class EpisodeDetailState with _$EpisodeDetailState {
  const factory EpisodeDetailState({
    @Default(RequestState.idle())
    RequestState<List<CharacterDetailDomainModel>> character,
  }) = _EpisodeDetailState;
}
