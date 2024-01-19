import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hogwarts_test_project/data/repository/characters_repository/i_characters_repository.dart';
import 'package:hogwarts_test_project/domain/api/character.dart';
import 'package:meta/meta.dart';

part 'characters_event.dart';
part 'characters_state.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  CharactersBloc() : super(const CharactersInitial()) {
    on<GetCharactersEvent>(_onGetCharactersEvent);

    add(GetCharactersEvent());
  }
  final ICharactersRepository _repository = GetIt.instance.get();

  FutureOr<void> _onGetCharactersEvent(
    GetCharactersEvent event,
    Emitter<CharactersState> emit,
  ) async {
    emit(CharactersLoading(state.characters));

    final response = await _repository.getCharacters();

    response.fold(
      (l) => emit(CharactersError(state.characters, l.error)),
      (r) => emit(CharactersLoaded(r)),
    );
  }
}
