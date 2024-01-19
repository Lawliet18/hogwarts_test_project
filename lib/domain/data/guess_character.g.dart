// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guess_character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GuessCharacterImpl _$$GuessCharacterImplFromJson(Map<String, dynamic> json) =>
    _$GuessCharacterImpl(
      character: Character.fromJson(json['character'] as Map<String, dynamic>),
      attempts: json['attempts'] as int,
      isGuessed: json['isGuessed'] as bool? ?? false,
    );

Map<String, dynamic> _$$GuessCharacterImplToJson(
  _$GuessCharacterImpl instance,
) =>
    <String, dynamic>{
      'character': instance.character,
      'attempts': instance.attempts,
      'isGuessed': instance.isGuessed,
    };
