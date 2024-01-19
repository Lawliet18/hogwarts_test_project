import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hogwarts_test_project/core/router/app_router.dart';
import 'package:hogwarts_test_project/core/theme/app_theme.dart';
import 'package:hogwarts_test_project/presentation/blocs/character/character_cubit.dart';
import 'package:hogwarts_test_project/presentation/blocs/characters/characters_bloc.dart';
import 'package:hogwarts_test_project/presentation/blocs/guess_character/guess_character_cubit.dart';
import 'package:hogwarts_test_project/presentation/blocs/theme/theme_cubit.dart';
import 'package:hogwarts_test_project/presentation/blocs/total_guess/total_guess_cubit.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CharactersBloc()),
        BlocProvider(create: (_) => ThemeCubit()),
        BlocProvider(create: (_) => TotalGuessCubit()),
        BlocProvider(
          create: (context) => CharacterCubit(
            context.read<CharactersBloc>(),
          ),
        ),
        BlocProvider(
          create: (context) => GuessCharacterCubit(
            characterCubit: context.read<CharacterCubit>(),
            totalGuessCubit: context.read<TotalGuessCubit>(),
          ),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp.router(
            routerConfig: GetIt.instance.get<AppRouter>().config(),
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.dartTheme,
            themeMode: themeMode,
          );
        },
      ),
    );
  }
}
