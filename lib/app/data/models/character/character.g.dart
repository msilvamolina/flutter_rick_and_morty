// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Character _$_$_CharacterFromJson(Map<String, dynamic> json) {
  return _$_Character(
    id: json['id'] as int,
    name: json['name'] as String?,
    status: json['status'] as String?,
    species: json['species'] as String?,
    gender: json['gender'] as String?,
    character: json['character'] as String?,
    image: json['image'] as String?,
    url: json['url'] as String?,
    created: json['created'] as String?,
  );
}

Map<String, dynamic> _$_$_CharacterToJson(_$_Character instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'gender': instance.gender,
      'character': instance.character,
      'image': instance.image,
      'url': instance.url,
      'created': instance.created,
    };
