import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hogwarts_test_project/presentation/blocs/guess_character/guess_character_cubit.dart';
import 'package:hogwarts_test_project/presentation/blocs/total_guess/total_guess_cubit.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => _onResetTap(context),
      child: const Text('Reset'),
    );
  }

  void _onResetTap(BuildContext context) {
    context.read<TotalGuessCubit>().reset();
    context.read<GuessCharacterCubit>().reset();
  }
}
