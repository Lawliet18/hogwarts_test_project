import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hogwarts_test_project/core/theme/app_theme.dart';
import 'package:hogwarts_test_project/domain/data/app_data.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  static final AppData _appData = GetIt.instance.get();

  ThemeCubit() : super(AppTheme.getThemeMode(_appData.themeMode));

  void setTheme(ThemeMode mode) {
    emit(mode);
  }
}
