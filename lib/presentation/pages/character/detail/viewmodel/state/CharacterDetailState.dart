import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../domain/episode/model/EpisodeDomainModel.dart';
import '../../../../../../utils/RequestState.dart';

part 'CharacterDetailState.freezed.dart';

@freezed
class CharacterDetailState with _$CharacterDetailState {
  const factory CharacterDetailState({
    @Default(RequestState.idle())
    RequestState<List<EpisodeDetailDomainModel>> episode,
  }) = _CharacterDetailState;
}