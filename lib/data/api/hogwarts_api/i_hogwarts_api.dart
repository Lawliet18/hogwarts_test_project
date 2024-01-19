import 'package:dio/dio.dart';

abstract class IHogwartsApi {
  Future<Response<dynamic>> getCharacters();
}
