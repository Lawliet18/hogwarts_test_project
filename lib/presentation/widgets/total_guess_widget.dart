import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hogwarts_test_project/domain/data/total_guess.dart';
import 'package:hogwarts_test_project/presentation/blocs/total_guess/total_guess_cubit.dart';
import 'package:hogwarts_test_project/presentation/widgets/default_container.dart';

class TotalGuessWidget extends StatelessWidget {
  const TotalGuessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TotalGuessCubit, TotalGuess>(
      builder: (context, state) {
        return Row(
          children: [
            Flexible(
              child: DefaultContainer.title(
                text: 'Total',
                title: '${state.success + state.failure}',
              ),
            ),
            const SizedBox(width: 10.0),
            Flexible(
              child: DefaultContainer.title(
                text: 'Success',
                title: state.success.toString(),
              ),
            ),
            const SizedBox(width: 10.0),
            Flexible(
              child: DefaultContainer.title(
                text: 'Failed',
                title: state.failure.toString(),
              ),
            ),
          ],
        );
      },
    );
  }
}
