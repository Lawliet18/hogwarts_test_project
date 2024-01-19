import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hogwarts_test_project/presentation/blocs/theme/theme_cubit.dart';

class ThemeDropdown extends StatelessWidget {
  const ThemeDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, themeMode) {
        return DropdownButton<ThemeMode>(
          value: themeMode,
          onChanged: (t) => _onThemeModeTap(context, t),
          items: ThemeMode.values
              .map(
                (t) => DropdownMenuItem(
                  value: t,
                  child: Text(t.name.toUpperCase()),
                ),
              )
              .toList(),
        );
      },
    );
  }

  void _onThemeModeTap(BuildContext context, ThemeMode? t) {
    if (t != null) {
      context.read<ThemeCubit>().setTheme(t);
    }
  }
}
