import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_new/domain/episode/model/EpisodeDomainModel.dart';
import 'package:rick_and_morty_new/utils/RequestState.dart';

part 'EpisodeState.freezed.dart';

@freezed
class EpisodeState with _$EpisodeState {
  const factory EpisodeState({
    @Default(RequestState.idle()) RequestState<EpisodeDomainModel> episode,
  }) = _EpisodeState;
}