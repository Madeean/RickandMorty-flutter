import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_new/domain/episode/model/EpisodeDomainModel.dart';
part 'EpisodeResponse.freezed.dart';
part 'EpisodeResponse.g.dart';

@freezed
class EpisodeResponse with _$EpisodeResponse {
  const factory EpisodeResponse({
    String? message,
    List<EpisodeDetailResponse>? results,
  }) = _EpisodeResponse;

  factory EpisodeResponse.fromJson(Map<String, dynamic> json) =>
      _$EpisodeResponseFromJson(json);
}

@freezed
class EpisodeDetailResponse with _$EpisodeDetailResponse {
  const factory EpisodeDetailResponse({
    int? id,
    String? name,
    @JsonKey(name: 'air_date') String? airDate,
    String? episode,
    String? created,
    @JsonKey(name: 'characters') List<String>? characterList,
  }) = _EpisodeDetailResponse;

  factory EpisodeDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$EpisodeDetailResponseFromJson(json);
}

extension EpisodeMapper on EpisodeResponse {
  EpisodeDomainModel toDomain() {
    return EpisodeDomainModel(
      message: message ?? '',
      results: results?.map((e) => e.toDomain()).toList() ?? [],
    );
  }
}

extension EpisodeDetailMapper on EpisodeDetailResponse {
  EpisodeDetailDomainModel toDomain() {
    return EpisodeDetailDomainModel(
      id: id ?? 0,
      name: name ?? '',
      airDate: airDate ?? '',
      episode: episode ?? '',
      created: created ?? '',
      characterList: characterList ?? [],
    );
  }
}