import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';

import 'package:hogwarts_test_project/domain/api/character.dart';
import 'package:hogwarts_test_project/presentation/blocs/characters/characters_bloc.dart';

class CharacterCubit extends Cubit<Character?> {
  final CharactersBloc _charactersBloc;

  late StreamSubscription _subscription;

  CharacterCubit(CharactersBloc charactersBloc)
      : _charactersBloc = charactersBloc,
        super(null) {
    _subscription = _charactersBloc.stream.listen((event) {
      if (event.hasData) {
        newCharacter();
      }
    });
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }

  void newCharacter() {
    List<Character> characters = _charactersBloc.state.characters!;
    Character randomCharacter =
        characters[Random().nextInt(characters.length - 1)];

    emit(randomCharacter);
  }

  void setCharacter(Character character) {
    emit(character);
  }
}
