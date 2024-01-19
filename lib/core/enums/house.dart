import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hogwarts_test_project/core/constants/asset_icons.dart';

enum House {
  @JsonValue('Gryffindor')
  gryffindor(AseetIcons.gryffindor),
  @JsonValue('Slytherin')
  slytherin(AseetIcons.slytherin),
  @JsonValue('Ravenclaw')
  ravenclaw(AseetIcons.ravenclaw),
  @JsonValue('Hufflepuff')
  hufflepuff(AseetIcons.hufflepuff),
  @JsonValue('')
  unknown('');

  final String icon;

  const House(this.icon);
}
