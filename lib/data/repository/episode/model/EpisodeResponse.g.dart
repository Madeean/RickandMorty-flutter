// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'EpisodeResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EpisodeResponseImpl _$$EpisodeResponseImplFromJson(
  Map<String, dynamic> json,
) => _$EpisodeResponseImpl(
  message: json['message'] as String?,
  results:
      (json['results'] as List<dynamic>?)
          ?.map(
            (e) => EpisodeDetailResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$$EpisodeResponseImplToJson(
  _$EpisodeResponseImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'results': instance.results,
};

_$EpisodeDetailResponseImpl _$$EpisodeDetailResponseImplFromJson(
  Map<String, dynamic> json,
) => _$EpisodeDetailResponseImpl(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  airDate: json['air_date'] as String?,
  episode: json['episode'] as String?,
  created: json['created'] as String?,
  characterList:
      (json['characters'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$$EpisodeDetailResponseImplToJson(
  _$EpisodeDetailResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'air_date': instance.airDate,
  'episode': instance.episode,
  'created': instance.created,
  'characters': instance.characterList,
};
