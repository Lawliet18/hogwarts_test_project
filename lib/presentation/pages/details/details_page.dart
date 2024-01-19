import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hogwarts_test_project/domain/data/guess_character.dart';

@RoutePage()
class DetailsPage extends StatelessWidget {
  final GuessCharacter guessCharacter;

  const DetailsPage({super.key, required this.guessCharacter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(guessCharacter.character.name),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: !guessCharacter.isGuessed
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: const Text(
                    'You need to guess the character correctly to access the details',
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Image.network(
                      guessCharacter.character.image,
                      errorBuilder: (context, error, stackTrace) =>
                          const Text('No Image'),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('House: ${guessCharacter.character.house.name}'),
                      Text(
                        'Wizard: ${guessCharacter.character.wizard ? 'Yes' : 'No'}',
                      ),
                      Text('Species: ${guessCharacter.character.species}'),
                      if (guessCharacter.character.actor.isNotEmpty)
                        Text('Actor: ${guessCharacter.character.actor}'),
                    ],
                  ),
                ],
              ),
      ),
    );
  }
}
