import 'package:freezed_annotation/freezed_annotation.dart';

part 'LocationDomainModel.freezed.dart';

@freezed
class LocationDomainModel with _$LocationDomainModel {
  const factory LocationDomainModel({
    required String message,
    required List<LocationDetailDomainModel> results,
  }) = _LocationDomainModel;
}

@freezed
class LocationDetailDomainModel with _$LocationDetailDomainModel {
  const factory LocationDetailDomainModel({
    required int id,
    required String name,
    required String type,
    required String dimension,
    required String created,
    required String url,
    required List<String> residents,
  }) = _LocationDetailDomainModel;
}