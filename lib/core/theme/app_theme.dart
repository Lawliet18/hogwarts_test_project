import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get dartTheme =>
      ThemeData(brightness: Brightness.dark, fontFamily: 'Yusei');
  static ThemeData get lightTheme =>
      ThemeData(brightness: Brightness.light, fontFamily: 'Yusei');

  static ThemeMode getThemeMode(String? value) {
    return ThemeMode.values.firstWhereOrNull((v) => v.toString() == value) ??
        ThemeMode.system;
  }

  AppTheme._();
}
