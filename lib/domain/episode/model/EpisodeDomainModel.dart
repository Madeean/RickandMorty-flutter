import 'package:freezed_annotation/freezed_annotation.dart';

part 'EpisodeDomainModel.freezed.dart';

@freezed
class EpisodeDomainModel with _$EpisodeDomainModel {
  const factory EpisodeDomainModel({
    required String message,
    required List<EpisodeDetailDomainModel> results,
  }) = _EpisodeDomainModel;
}

@freezed
class EpisodeDetailDomainModel with _$EpisodeDetailDomainModel {
  const factory EpisodeDetailDomainModel({
    required int id,
    required String name,
    required String airDate,
    required String episode,
    required String created,
    required List<String> characterList,
  }) = _EpisodeDetailDomainModel;
}