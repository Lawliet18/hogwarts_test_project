class RepositoryError {
  final dynamic error;
  final StackTrace? stackTrace;

  RepositoryError({
    required this.error,
    this.stackTrace,
  });
}
