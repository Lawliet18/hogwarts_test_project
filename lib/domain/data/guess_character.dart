import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hogwarts_test_project/domain/api/character.dart';

part 'guess_character.freezed.dart';
part 'guess_character.g.dart';

@freezed
class GuessCharacter with _$GuessCharacter {
  const factory GuessCharacter({
    required Character character,
    required int attempts,
    @Default(false) bool isGuessed,
  }) = _GuessCharacter;

  factory GuessCharacter.fromJson(Map<String, dynamic> json) =>
      _$GuessCharacterFromJson(json);
}
