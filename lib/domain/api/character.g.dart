// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterImpl _$$CharacterImplFromJson(Map<String, dynamic> json) =>
    _$CharacterImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      actor: json['actor'] as String,
      species: json['species'] as String,
      wizard: json['wizard'] as bool,
      house: $enumDecode(_$HouseEnumMap, json['house']),
    );

Map<String, dynamic> _$$CharacterImplToJson(_$CharacterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'actor': instance.actor,
      'species': instance.species,
      'wizard': instance.wizard,
      'house': _$HouseEnumMap[instance.house]!,
    };

const _$HouseEnumMap = {
  House.gryffindor: 'Gryffindor',
  House.slytherin: 'Slytherin',
  House.ravenclaw: 'Ravenclaw',
  House.hufflepuff: 'Hufflepuff',
  House.unknown: '',
};
