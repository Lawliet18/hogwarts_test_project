import 'package:dartz/dartz.dart';
import 'package:hogwarts_test_project/data/repository/repository_error.dart';
import 'package:hogwarts_test_project/domain/api/character.dart';

abstract class ICharactersRepository {
  Future<Either<RepositoryError, List<Character>>> getCharacters();
}
