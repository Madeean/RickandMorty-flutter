import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rickandmortyapp/domain/location/model/LocationDomainModel.dart';

part 'LocationResponse.freezed.dart';
part 'LocationResponse.g.dart';

@freezed
class LocationResponse with _$LocationResponse {
  const factory LocationResponse({
    String? message,
    List<LocationDetailResponse>? results,
  }) = _LocationResponse;

  factory LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationResponseFromJson(json);
}

@freezed
class LocationDetailResponse with _$LocationDetailResponse {
  const factory LocationDetailResponse({
    int? id,
    String? name,
    String? type,
    String? dimension,
    String? created,
    String? url,
    List<String>? residents,
  }) = _LocationDetailResponse;

  factory LocationDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationDetailResponseFromJson(json);
}

extension LocationMapper on LocationResponse {
  LocationDomainModel toDomain() {
    return LocationDomainModel(
      message: message ?? '',
      results: results?.map((e) => e.toDomain()).toList() ?? [],
    );
  }
}

extension LocationDetailMapper on LocationDetailResponse {
  LocationDetailDomainModel toDomain() {
    return LocationDetailDomainModel(
        id: id ?? 0,
        name: name ?? '',
        residents: residents ?? [],
        type: type ?? '',
        dimension: dimension ?? '',
        created: created ?? '',
        url: url ?? '');
  }
}
