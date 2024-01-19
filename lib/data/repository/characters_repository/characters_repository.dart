import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';
import 'package:hogwarts_test_project/data/api/hogwarts_api/i_hogwarts_api.dart';
import 'package:hogwarts_test_project/data/repository/base_repository.dart';
import 'package:hogwarts_test_project/data/repository/characters_repository/i_characters_repository.dart';
import 'package:hogwarts_test_project/data/repository/repository_error.dart';
import 'package:hogwarts_test_project/domain/api/character.dart';

class CharactersRepository extends BaseRepository
    implements ICharactersRepository {
  final IHogwartsApi _api = GetIt.instance.get();

  @override
  Future<Either<RepositoryError, List<Character>>> getCharacters() async {
    try {
      final response = await _api.getCharacters();

      final List<Character> photos = (response.data as List)
          .map<Character>((j) => Character.fromJson(j as Map<String, dynamic>))
          .toList();

      return Right(photos);
    } catch (error, stackTrace) {
      return Left(
        handleError(
          location: '$runtimeType.getPhotos()',
          error: error,
          stackTrace: stackTrace,
        ),
      );
    }
  }
}
