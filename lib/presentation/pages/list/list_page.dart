import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hogwarts_test_project/core/router/app_router.gr.dart';
import 'package:hogwarts_test_project/domain/api/character.dart';
import 'package:hogwarts_test_project/domain/data/guess_character.dart';
import 'package:hogwarts_test_project/presentation/blocs/character/character_cubit.dart';
import 'package:hogwarts_test_project/presentation/blocs/guess_character/guess_character_cubit.dart';
import 'package:hogwarts_test_project/presentation/widgets/reset_button.dart';
import 'package:hogwarts_test_project/presentation/widgets/theme_dropdown.dart';
import 'package:hogwarts_test_project/presentation/widgets/total_guess_widget.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final TextEditingController _controller = TextEditingController();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Screen'),
        centerTitle: true,
        actions: const [ThemeDropdown(), ResetButton()],
      ),
      body: CustomScrollView(
        slivers: [
          const SliverPadding(
            padding: EdgeInsets.all(20.0),
            sliver: SliverToBoxAdapter(
              child: TotalGuessWidget(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            sliver: SliverToBoxAdapter(
              child: TextField(
                controller: _controller,
                onChanged: (value) => _onChanged(context, value),
                decoration: InputDecoration(
                  suffixIcon: _controller.text.isEmpty
                      ? const Icon(Icons.search)
                      : IconButton(
                          onPressed: () => _onResetCharactersTap(context),
                          icon: const Icon(Icons.close),
                        ),
                  contentPadding: const EdgeInsets.all(10.0),
                  hintText: 'Filter characters..',
                  border: const OutlineInputBorder(),
                ),
              ),
            ),
          ),
          BlocBuilder<GuessCharacterCubit, List<GuessCharacter>>(
            builder: (context, state) {
              return SliverList.builder(
                itemCount: state.length,
                itemBuilder: (context, index) {
                  GuessCharacter guessCharacter = state[index];
                  bool isGuessed = guessCharacter.isGuessed;

                  return ListTile(
                    onTap: () => _openDetailsPage(context, guessCharacter),
                    leading: Image.network(
                      state[index].character.image,
                      errorBuilder: (context, error, stackTrace) =>
                          const Text('No Image'),
                    ),
                    title: Text(guessCharacter.character.name),
                    subtitle: Text('Attempts: ${state[index].attempts}'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (!isGuessed)
                          IconButton(
                            onPressed: () => _setCharacter(
                              context,
                              guessCharacter.character,
                            ),
                            icon: const Icon(Icons.restart_alt),
                          ),
                        Icon(isGuessed ? Icons.check : Icons.close),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  void _setCharacter(BuildContext context, Character character) {
    context.read<CharacterCubit>().setCharacter(character);
  }

  void _openDetailsPage(BuildContext context, GuessCharacter guessCharacter) {
    context.router.push(DetailsRoute(guessCharacter: guessCharacter));
  }

  void _onChanged(BuildContext context, String value) {
    context.read<GuessCharacterCubit>().filter(value);
    setState(() {});
  }

  void _onResetCharactersTap(BuildContext context) {
    context.read<GuessCharacterCubit>().resetCharacters();
    _controller.clear();
    setState(() {});
  }
}
