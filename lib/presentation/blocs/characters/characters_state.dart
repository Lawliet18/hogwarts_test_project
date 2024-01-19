part of 'characters_bloc.dart';

@immutable
abstract class CharactersState {
  const CharactersState(this.characters);
  final List<Character>? characters;

  bool get hasData => characters != null;
}

class CharactersInitial extends CharactersState {
  const CharactersInitial() : super(null);
}

class CharactersLoading extends CharactersState {
  const CharactersLoading(super.characters);
}

class CharactersLoaded extends CharactersState {
  const CharactersLoaded(super.characters);
}

class CharactersError extends CharactersState {
  const CharactersError(super.characters, this.error);
  final dynamic error;
}
