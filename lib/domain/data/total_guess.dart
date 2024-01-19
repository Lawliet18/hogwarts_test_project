import 'package:freezed_annotation/freezed_annotation.dart';

part 'total_guess.freezed.dart';
part 'total_guess.g.dart';

@freezed
class TotalGuess with _$TotalGuess {
  const factory TotalGuess({
    required int success,
    required int failure,
  }) = _TotalGuess;

  factory TotalGuess.fromJson(Map<String, dynamic> json) =>
      _$TotalGuessFromJson(json);
}
