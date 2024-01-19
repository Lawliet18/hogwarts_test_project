// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:hogwarts_test_project/domain/data/guess_character.dart' as _i5;
import 'package:hogwarts_test_project/presentation/pages/details/details_page.dart'
    as _i1;
import 'package:hogwarts_test_project/presentation/pages/main/main_page.dart'
    as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    DetailsRoute.name: (routeData) {
      final args = routeData.argsAs<DetailsRouteArgs>();
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.DetailsPage(
          key: args.key,
          guessCharacter: args.guessCharacter,
        ),
      );
    },
    MainRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.MainPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DetailsPage]
class DetailsRoute extends _i3.PageRouteInfo<DetailsRouteArgs> {
  DetailsRoute({
    _i4.Key? key,
    required _i5.GuessCharacter guessCharacter,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          DetailsRoute.name,
          args: DetailsRouteArgs(
            key: key,
            guessCharacter: guessCharacter,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailsRoute';

  static const _i3.PageInfo<DetailsRouteArgs> page =
      _i3.PageInfo<DetailsRouteArgs>(name);
}

class DetailsRouteArgs {
  const DetailsRouteArgs({
    this.key,
    required this.guessCharacter,
  });

  final _i4.Key? key;

  final _i5.GuessCharacter guessCharacter;

  @override
  String toString() {
    return 'DetailsRouteArgs{key: $key, guessCharacter: $guessCharacter}';
  }
}

/// generated route for
/// [_i2.MainPage]
class MainRoute extends _i3.PageRouteInfo<void> {
  const MainRoute({List<_i3.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
