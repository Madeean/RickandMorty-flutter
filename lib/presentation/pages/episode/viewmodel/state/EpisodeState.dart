import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rickandmortyapp/domain/episode/model/EpisodeDomainModel.dart';
import 'package:rickandmortyapp/utils/RequestState.dart';

part 'EpisodeState.freezed.dart';

@freezed
class EpisodeState with _$EpisodeState {
  const factory EpisodeState({
    @Default(RequestState.idle()) RequestState<EpisodeDomainModel> episode,
  }) = _EpisodeState;
}