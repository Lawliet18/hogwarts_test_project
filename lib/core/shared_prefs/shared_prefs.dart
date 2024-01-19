import 'dart:convert';

import 'package:hogwarts_test_project/core/constants/shared_prefs_constants.dart';
import 'package:hogwarts_test_project/domain/data/guess_character.dart';
import 'package:hogwarts_test_project/domain/data/total_guess.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static SharedPrefs instance = SharedPrefs._();

  late final SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  TotalGuess getTotalGuess() {
    String? value = _prefs.getString(SharedPrefsConstants.totalGuessKey);
    if (value != null) {
      final data = jsonDecode(value);
      return TotalGuess.fromJson(data);
    }
    return const TotalGuess(success: 0, failure: 0);
  }

  List<GuessCharacter> getGuessCharacters() {
    List<String>? value =
        _prefs.getStringList(SharedPrefsConstants.guessCharactersKey);
    if (value != null) {
      return value.map((v) => GuessCharacter.fromJson(jsonDecode(v))).toList();
    }
    return [];
  }

  String? getThemeMode() => _prefs.getString(SharedPrefsConstants.themeModeKey);

  Future<bool> setTotalGuess(TotalGuess totalGuess) => _prefs.setString(
        SharedPrefsConstants.totalGuessKey,
        jsonEncode(totalGuess.toJson()),
      );

  Future<bool> setGuessCharacters(List<GuessCharacter> guessCharacters) =>
      _prefs.setStringList(
        SharedPrefsConstants.guessCharactersKey,
        guessCharacters.map((c) => jsonEncode(c.toJson())).toList(),
      );

  Future<bool> setThemeMode(String themeMode) =>
      _prefs.setString(SharedPrefsConstants.themeModeKey, themeMode);

  Future<bool> removeGuessCharacters() =>
      _prefs.remove(SharedPrefsConstants.guessCharactersKey);

  Future<bool> removeTotalGuess() =>
      _prefs.remove(SharedPrefsConstants.totalGuessKey);

  SharedPrefs._();
}
