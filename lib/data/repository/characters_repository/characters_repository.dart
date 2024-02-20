import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';
import 'package:hogwarts_test_project/data/api/hogwarts_api/hogwarts_api.dart';
import 'package:hogwarts_test_project/data/repository/base_repository.dart';
import 'package:hogwarts_test_project/data/repository/characters_repository/i_characters_repository.dart';
import 'package:hogwarts_test_project/data/repository/repository_error.dart';
import 'package:hogwarts_test_project/domain/api/character.dart';

class CharactersRepository extends BaseRepository
    implements ICharactersRepository {
  final HogwartsApi _api = GetIt.instance.get();

  @override
  Future<Either<RepositoryError, List<Character>>> getCharacters() async {
    try {
      final data = await _api.getCharacters();

      return Right(data);
    } catch (error, stackTrace) {
      return Left(
        handleError(
          location: '$runtimeType.getCharacters()',
          error: error,
          stackTrace: stackTrace,
        ),
      );
    }
  }
}
