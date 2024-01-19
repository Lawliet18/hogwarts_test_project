import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hogwarts_test_project/core/extensions/theme_extension.dart';
import 'package:hogwarts_test_project/domain/api/character.dart';
import 'package:hogwarts_test_project/presentation/blocs/character/character_cubit.dart';
import 'package:hogwarts_test_project/presentation/pages/home/home_page.dart';
import 'package:hogwarts_test_project/presentation/pages/list/list_page.dart';

enum MainSubPage { home, list, wind, balance }

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PageController _pageController = PageController();

  MainSubPage _currentSubPage = MainSubPage.home;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = context.theme;
    return BlocListener<CharacterCubit, Character?>(
      listener: _characterListener,
      child: Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: _onPageChanged,
          children: const [
            HomePage(),
            ListPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: _onNavIconTap,
          currentIndex: _currentSubPage.index,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
          ],
          selectedItemColor: theme.colorScheme.primary,
          unselectedItemColor: theme.colorScheme.primary.withOpacity(.4),
          type: BottomNavigationBarType.shifting,
        ),
      ),
    );
  }

  void _onPageChanged(int value) {
    setState(() {
      _currentSubPage = MainSubPage.values[value];
    });
  }

  void _onNavIconTap(int value) {
    _currentSubPage = MainSubPage.values[value];
    _pageController.animateToPage(
      value,
      duration: const Duration(milliseconds: 500),
      curve: Curves.decelerate,
    );
  }

  void _characterListener(BuildContext context, Character? state) {
    if (state != null) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(content: Text('New character to guess is ${state.name}')),
        );
    }
  }
}
