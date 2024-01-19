import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hogwarts_test_project/domain/data/app_data.dart';
import 'package:hogwarts_test_project/domain/data/total_guess.dart';

class TotalGuessCubit extends Cubit<TotalGuess> {
  static final AppData _appData = GetIt.instance.get();

  TotalGuessCubit() : super(_appData.totalGuess);

  Future<void> successGuess() {
    emit(state.copyWith(success: state.success + 1));
    return _appData.setTotalGuess(state);
  }

  Future<void> failureGuess() {
    emit(state.copyWith(failure: state.failure + 1));
    return _appData.setTotalGuess(state);
  }

  Future<void> reset() {
    emit(const TotalGuess(success: 0, failure: 0));
    return _appData.removeTotalGuess();
  }
}
