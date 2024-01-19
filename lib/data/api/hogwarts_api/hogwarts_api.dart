import 'package:dio/dio.dart';
import 'package:hogwarts_test_project/data/api/hogwarts_api/i_hogwarts_api.dart';

class HogwartsApi extends IHogwartsApi {
  HogwartsApi() : _dio = Dio(BaseOptions(baseUrl: _baseUrl));
  static const String _baseUrl = 'https://hp-api.onrender.com';

  final Dio _dio;

  @override
  Future<Response> getCharacters() {
    return _dio.get('/api/characters');
  }
}
