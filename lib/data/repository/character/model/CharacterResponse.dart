import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty_new/domain/character/model/CharacterDomainModel.dart';

part 'CharacterResponse.freezed.dart';
part 'CharacterResponse.g.dart';

@freezed
class CharacterResponse with _$CharacterResponse {
  const factory CharacterResponse({
    String? message,
    List<CharacterDetailResponse>? results,
  }) = _CharacterResponse;

  factory CharacterResponse.fromJson(Map<String, dynamic> json) =>
      _$CharacterResponseFromJson(json);
}

@freezed
class CharacterDetailResponse with _$CharacterDetailResponse {
  const factory CharacterDetailResponse(
      {int? id,
      String? name,
      String? status,
      String? species,
      String? type,
      String? gender,
      CharacterDetailOriginResponse? origin,
      CharacterDetailLocationResponse? location,
      String? image,
      List<String>? episode}) = _CharacterDetailResponse;

  factory CharacterDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$CharacterDetailResponseFromJson(json);
}

@freezed
class CharacterDetailOriginResponse with _$CharacterDetailOriginResponse {
  const factory CharacterDetailOriginResponse({
    String? name,
    String? url,
  }) = _CharacterDetailOriginResponse;

  factory CharacterDetailOriginResponse.fromJson(Map<String, dynamic> json) =>
      _$CharacterDetailOriginResponseFromJson(json);
}

@freezed
class CharacterDetailLocationResponse with _$CharacterDetailLocationResponse {
  const factory CharacterDetailLocationResponse({
    String? name,
    String? url,
  }) = _CharacterDetailLocationResponse;

  factory CharacterDetailLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$CharacterDetailLocationResponseFromJson(json);
}

extension CharacterMapper on CharacterResponse {
  CharacterDomainModel toDomain() {
    return CharacterDomainModel(
      message: message ?? '',
      results: results?.map((e) => e.toDomain()).toList() ?? [],
    );
  }
}

extension CharacterDetailMapper on CharacterDetailResponse {
  CharacterDetailDomainModel toDomain() {
    return CharacterDetailDomainModel(
      id: id ?? 0,
      name: name ?? '',
      status: status ?? '',
      species: species ?? '',
      type: type ?? '',
      gender: gender ?? '',
      image: image ?? '',
      origin: origin?.toDomain() ??
          const CharacterDetailOriginDomainModel(name: '', url: ''),
      location: location?.toDomain() ??
          const CharacterDetailLocationDomainModel(name: '', url: ''),
      episode: episode ?? [],
    );
  }
}

extension CharacterDetailOriginMapper on CharacterDetailOriginResponse {
  CharacterDetailOriginDomainModel toDomain() {
    return CharacterDetailOriginDomainModel(name: name ?? '', url: url ?? '');
  }
}

extension CharacterDetailLocationMapper on CharacterDetailLocationResponse {
  CharacterDetailLocationDomainModel toDomain() {
    return CharacterDetailLocationDomainModel(name: name ?? '', url: url ?? '');
  }
}
