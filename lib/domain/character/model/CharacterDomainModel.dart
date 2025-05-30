import 'package:freezed_annotation/freezed_annotation.dart';

part 'CharacterDomainModel.freezed.dart';

@freezed
class CharacterDomainModel with _$CharacterDomainModel {
  const factory CharacterDomainModel({
    required String message,
    required List<CharacterDetailDomainModel> results,
  }) = _CharacterDomainModel;
}

@freezed
class CharacterDetailDomainModel with _$CharacterDetailDomainModel {
  const factory CharacterDetailDomainModel({
    required int id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required CharacterDetailOriginDomainModel origin,
    required CharacterDetailLocationDomainModel location,
    required String image,
    required List<String> episode,
  }) = _CharacterDetailDomainModel;
}

@freezed
class CharacterDetailOriginDomainModel with _$CharacterDetailOriginDomainModel {
  const factory CharacterDetailOriginDomainModel({
    required String name,
    required String url,
  }) = _CharacterDetailOriginDomainModel;
}

@freezed
class CharacterDetailLocationDomainModel
    with _$CharacterDetailLocationDomainModel {
  const factory CharacterDetailLocationDomainModel({
    required String name,
    required String url,
  }) = _CharacterDetailLocationDomainModel;
}
