import 'package:dio/dio.dart';
import 'package:hogwarts_test_project/domain/api/character.dart';
import 'package:retrofit/http.dart';

part 'hogwarts_api.g.dart';

@RestApi(baseUrl: 'https://hp-api.onrender.com')
abstract class HogwartsApi {
  factory HogwartsApi(Dio dio) = _HogwartsApi;

  @GET('/api/characters')
  Future<List<Character>> getCharacters();
}
