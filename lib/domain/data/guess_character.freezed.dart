// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guess_character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GuessCharacter _$GuessCharacterFromJson(Map<String, dynamic> json) {
  return _GuessCharacter.fromJson(json);
}

/// @nodoc
mixin _$GuessCharacter {
  Character get character => throw _privateConstructorUsedError;
  int get attempts => throw _privateConstructorUsedError;
  bool get isGuessed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuessCharacterCopyWith<GuessCharacter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuessCharacterCopyWith<$Res> {
  factory $GuessCharacterCopyWith(
          GuessCharacter value, $Res Function(GuessCharacter) then) =
      _$GuessCharacterCopyWithImpl<$Res, GuessCharacter>;
  @useResult
  $Res call({Character character, int attempts, bool isGuessed});

  $CharacterCopyWith<$Res> get character;
}

/// @nodoc
class _$GuessCharacterCopyWithImpl<$Res, $Val extends GuessCharacter>
    implements $GuessCharacterCopyWith<$Res> {
  _$GuessCharacterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
    Object? attempts = null,
    Object? isGuessed = null,
  }) {
    return _then(_value.copyWith(
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character,
      attempts: null == attempts
          ? _value.attempts
          : attempts // ignore: cast_nullable_to_non_nullable
              as int,
      isGuessed: null == isGuessed
          ? _value.isGuessed
          : isGuessed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res> get character {
    return $CharacterCopyWith<$Res>(_value.character, (value) {
      return _then(_value.copyWith(character: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GuessCharacterImplCopyWith<$Res>
    implements $GuessCharacterCopyWith<$Res> {
  factory _$$GuessCharacterImplCopyWith(_$GuessCharacterImpl value,
          $Res Function(_$GuessCharacterImpl) then) =
      __$$GuessCharacterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Character character, int attempts, bool isGuessed});

  @override
  $CharacterCopyWith<$Res> get character;
}

/// @nodoc
class __$$GuessCharacterImplCopyWithImpl<$Res>
    extends _$GuessCharacterCopyWithImpl<$Res, _$GuessCharacterImpl>
    implements _$$GuessCharacterImplCopyWith<$Res> {
  __$$GuessCharacterImplCopyWithImpl(
      _$GuessCharacterImpl _value, $Res Function(_$GuessCharacterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
    Object? attempts = null,
    Object? isGuessed = null,
  }) {
    return _then(_$GuessCharacterImpl(
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character,
      attempts: null == attempts
          ? _value.attempts
          : attempts // ignore: cast_nullable_to_non_nullable
              as int,
      isGuessed: null == isGuessed
          ? _value.isGuessed
          : isGuessed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GuessCharacterImpl implements _GuessCharacter {
  const _$GuessCharacterImpl(
      {required this.character,
      required this.attempts,
      this.isGuessed = false});

  factory _$GuessCharacterImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuessCharacterImplFromJson(json);

  @override
  final Character character;
  @override
  final int attempts;
  @override
  @JsonKey()
  final bool isGuessed;

  @override
  String toString() {
    return 'GuessCharacter(character: $character, attempts: $attempts, isGuessed: $isGuessed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuessCharacterImpl &&
            (identical(other.character, character) ||
                other.character == character) &&
            (identical(other.attempts, attempts) ||
                other.attempts == attempts) &&
            (identical(other.isGuessed, isGuessed) ||
                other.isGuessed == isGuessed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, character, attempts, isGuessed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuessCharacterImplCopyWith<_$GuessCharacterImpl> get copyWith =>
      __$$GuessCharacterImplCopyWithImpl<_$GuessCharacterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuessCharacterImplToJson(
      this,
    );
  }
}

abstract class _GuessCharacter implements GuessCharacter {
  const factory _GuessCharacter(
      {required final Character character,
      required final int attempts,
      final bool isGuessed}) = _$GuessCharacterImpl;

  factory _GuessCharacter.fromJson(Map<String, dynamic> json) =
      _$GuessCharacterImpl.fromJson;

  @override
  Character get character;
  @override
  int get attempts;
  @override
  bool get isGuessed;
  @override
  @JsonKey(ignore: true)
  _$$GuessCharacterImplCopyWith<_$GuessCharacterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
