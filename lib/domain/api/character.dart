import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hogwarts_test_project/core/enums/house.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  const factory Character({
    required String id,
    required String name,
    required String image,
    required String actor,
    required String species,
    required bool wizard,
    required House house,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}
