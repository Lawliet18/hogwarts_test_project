import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hogwarts_test_project/core/enums/house.dart';
import 'package:hogwarts_test_project/domain/api/character.dart';
import 'package:hogwarts_test_project/presentation/blocs/character/character_cubit.dart';
import 'package:hogwarts_test_project/presentation/blocs/characters/characters_bloc.dart';
import 'package:hogwarts_test_project/presentation/blocs/guess_character/guess_character_cubit.dart';
import 'package:hogwarts_test_project/presentation/widgets/default_container.dart';
import 'package:hogwarts_test_project/presentation/widgets/reset_button.dart';
import 'package:hogwarts_test_project/presentation/widgets/theme_dropdown.dart';
import 'package:hogwarts_test_project/presentation/widgets/total_guess_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
        actions: const [ThemeDropdown(), ResetButton()],
      ),
      body: BlocBuilder<CharacterCubit, Character?>(
        builder: (context, character) {
          return BlocBuilder<CharactersBloc, CharactersState>(
            builder: (context, state) {
              if (state.hasData) {
                return _buildBody(context, character!);
              } else if (state is CharactersLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is CharactersError) {
                return Center(
                  child: Text(state.error.toString()),
                );
              }

              return const SizedBox.shrink();
            },
          );
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context, Character character) {
    return RefreshIndicator(
      onRefresh: () async => _updateGuessCharacter(context),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              const TotalGuessWidget(),
              const SizedBox(height: 20.0),
              Image.network(
                character.image,
                errorBuilder: (context, error, stackTrace) =>
                    const Text('No Image'),
                width: 200,
                height: 300,
              ),
              const SizedBox(height: 10.0),
              Text(
                character.name,
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20.0),
              GridView.count(
                crossAxisCount: 2,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                children: House.values
                    .take(4)
                    .map(
                      (v) => DefaultContainer.icon(
                        onTap: () => _guessHouse(context, v),
                        text: v.name[0].toUpperCase() + v.name.substring(1),
                        icon: v.icon,
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 10.0),
              DefaultContainer.text(
                text: 'Not in house',
                onTap: () => _guessHouse(context, House.unknown),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _guessHouse(BuildContext context, House h) {
    context.read<GuessCharacterCubit>().guessCharacter(h);
  }

  void _updateGuessCharacter(BuildContext context) {
    context.read<CharacterCubit>().newCharacter();
  }
}
