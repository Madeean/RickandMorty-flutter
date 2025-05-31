// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LocationResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationResponseImpl _$$LocationResponseImplFromJson(
  Map<String, dynamic> json,
) => _$LocationResponseImpl(
  message: json['message'] as String?,
  results:
      (json['results'] as List<dynamic>?)
          ?.map(
            (e) => LocationDetailResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$$LocationResponseImplToJson(
  _$LocationResponseImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'results': instance.results,
};

_$LocationDetailResponseImpl _$$LocationDetailResponseImplFromJson(
  Map<String, dynamic> json,
) => _$LocationDetailResponseImpl(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  type: json['type'] as String?,
  dimension: json['dimension'] as String?,
  created: json['created'] as String?,
  url: json['url'] as String?,
  residents:
      (json['residents'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$$LocationDetailResponseImplToJson(
  _$LocationDetailResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'type': instance.type,
  'dimension': instance.dimension,
  'created': instance.created,
  'url': instance.url,
  'residents': instance.residents,
};
