// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'CharacterResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterResponseImpl _$$CharacterResponseImplFromJson(
  Map<String, dynamic> json,
) => _$CharacterResponseImpl(
  message: json['message'] as String?,
  results:
      (json['results'] as List<dynamic>?)
          ?.map(
            (e) => CharacterDetailResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$$CharacterResponseImplToJson(
  _$CharacterResponseImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'results': instance.results,
};

_$CharacterDetailResponseImpl _$$CharacterDetailResponseImplFromJson(
  Map<String, dynamic> json,
) => _$CharacterDetailResponseImpl(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  status: json['status'] as String?,
  species: json['species'] as String?,
  type: json['type'] as String?,
  gender: json['gender'] as String?,
  origin:
      json['origin'] == null
          ? null
          : CharacterDetailOriginResponse.fromJson(
            json['origin'] as Map<String, dynamic>,
          ),
  location:
      json['location'] == null
          ? null
          : CharacterDetailLocationResponse.fromJson(
            json['location'] as Map<String, dynamic>,
          ),
  image: json['image'] as String?,
  episode:
      (json['episode'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$$CharacterDetailResponseImplToJson(
  _$CharacterDetailResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'status': instance.status,
  'species': instance.species,
  'type': instance.type,
  'gender': instance.gender,
  'origin': instance.origin,
  'location': instance.location,
  'image': instance.image,
  'episode': instance.episode,
};

_$CharacterDetailOriginResponseImpl
_$$CharacterDetailOriginResponseImplFromJson(Map<String, dynamic> json) =>
    _$CharacterDetailOriginResponseImpl(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$CharacterDetailOriginResponseImplToJson(
  _$CharacterDetailOriginResponseImpl instance,
) => <String, dynamic>{'name': instance.name, 'url': instance.url};

_$CharacterDetailLocationResponseImpl
_$$CharacterDetailLocationResponseImplFromJson(Map<String, dynamic> json) =>
    _$CharacterDetailLocationResponseImpl(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$CharacterDetailLocationResponseImplToJson(
  _$CharacterDetailLocationResponseImpl instance,
) => <String, dynamic>{'name': instance.name, 'url': instance.url};
