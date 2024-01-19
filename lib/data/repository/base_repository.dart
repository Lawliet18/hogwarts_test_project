import 'package:dio/dio.dart';
import 'package:hogwarts_test_project/data/repository/repository_error.dart';
import 'package:hogwarts_test_project/domain/api/api_error.dart';

abstract class BaseRepository {
  RepositoryError handleError({
    required String location,
    required dynamic error,
    required StackTrace? stackTrace,
  }) {
    if (error is DioException) {
      return _handleDioError(
        error: error,
        stackTrace: stackTrace,
      );
    }

    return RepositoryError(error: error, stackTrace: stackTrace);
  }

  RepositoryError _handleDioError({
    required DioException error,
    required StackTrace? stackTrace,
  }) {
    if (error.response != null &&
        error.response!.data is Map<String, dynamic>) {
      final data = error.response!.data as Map<String, dynamic>;
      final apiError = ApiError.fromJson(data);

      return RepositoryError(error: apiError);
    }
    return RepositoryError(error: error, stackTrace: stackTrace);
  }
}
