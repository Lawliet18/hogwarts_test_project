import 'package:get_it/get_it.dart';
import 'package:hogwarts_test_project/core/shared_prefs/shared_prefs.dart';
import 'package:hogwarts_test_project/domain/data/guess_character.dart';
import 'package:hogwarts_test_project/domain/data/total_guess.dart';

class AppData {
  final SharedPrefs _sharedPrefs = GetIt.instance.get();

  late String? _themeMode;
  late TotalGuess _totalGuess;
  late List<GuessCharacter> _guessCharacters;

  String? get themeMode => _themeMode;
  TotalGuess get totalGuess => _totalGuess;
  List<GuessCharacter> get guessCharacters => _guessCharacters;

  Future<void> setThemeMode(String themeMode) async {
    await _sharedPrefs.setThemeMode(themeMode);
    _themeMode = themeMode;
  }

  Future<void> setTotalGuess(TotalGuess totalGuess) async {
    await _sharedPrefs.setTotalGuess(totalGuess);
    _totalGuess = totalGuess;
  }

  Future<void> setGuessCharacters(List<GuessCharacter> guessCharacters) async {
    await _sharedPrefs.setGuessCharacters(guessCharacters);
    _guessCharacters = guessCharacters;
  }

  Future<void> removeGuessCharacters() async {
    await _sharedPrefs.removeGuessCharacters();
    _guessCharacters = [];
  }

  Future<void> removeTotalGuess() async {
    await _sharedPrefs.removeTotalGuess();
    _totalGuess = const TotalGuess(success: 0, failure: 0);
  }

  AppData() {
    _themeMode = _sharedPrefs.getThemeMode();
    _totalGuess = _sharedPrefs.getTotalGuess();
    _guessCharacters = _sharedPrefs.getGuessCharacters();
  }
}
