import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:get_it/get_it.dart';
import 'package:hogwarts_test_project/core/enums/house.dart';
import 'package:hogwarts_test_project/domain/api/character.dart';
import 'package:hogwarts_test_project/domain/data/app_data.dart';
import 'package:hogwarts_test_project/domain/data/guess_character.dart';
import 'package:hogwarts_test_project/presentation/blocs/character/character_cubit.dart';
import 'package:hogwarts_test_project/presentation/blocs/total_guess/total_guess_cubit.dart';

class GuessCharacterCubit extends Cubit<List<GuessCharacter>> {
  static final AppData _appData = GetIt.instance.get();

  final CharacterCubit _characterCubit;
  final TotalGuessCubit _totalGuessCubit;

  GuessCharacterCubit({
    required CharacterCubit characterCubit,
    required TotalGuessCubit totalGuessCubit,
  })  : _characterCubit = characterCubit,
        _totalGuessCubit = totalGuessCubit,
        super(_appData.guessCharacters);

  Future<void> guessCharacter(House house) {
    Character character = _characterCubit.state!;
    bool isGuessed = character.house == house;
    List<GuessCharacter> guessCharacters = List.from(state);
    GuessCharacter? guessCharacter =
        guessCharacters.firstWhereOrNull((g) => g.character == character);

    if (isGuessed) {
      _characterCubit.newCharacter();
      _totalGuessCubit.successGuess();
    } else {
      _totalGuessCubit.failureGuess();
    }

    if (guessCharacter == null) {
      guessCharacters.add(
        GuessCharacter(
          character: character,
          attempts: 1,
          isGuessed: isGuessed,
        ),
      );
    } else {
      int index = guessCharacters.indexOf(guessCharacter);
      guessCharacters[index] = guessCharacter.copyWith(
        attempts: guessCharacter.attempts + 1,
        isGuessed: isGuessed,
      );
    }

    emit(guessCharacters);
    return _appData.setGuessCharacters(guessCharacters);
  }

  void filter(String value) {
    List<GuessCharacter> guessCharacters = List.from(_appData.guessCharacters);
    List<GuessCharacter> filterCharacters = guessCharacters
        .where(
          (g) => g.character.name.toLowerCase().contains(value.toLowerCase()),
        )
        .toList();

    emit(filterCharacters);
  }

  void resetCharacters() {
    emit(_appData.guessCharacters);
  }

  Future<void> reset() {
    emit([]);
    return _appData.removeGuessCharacters();
  }
}
