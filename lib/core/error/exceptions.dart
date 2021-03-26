class UnexpectedException implements Exception {
  final String errorMessage;

  UnexpectedException(this.errorMessage);
}

class UnauthorisedException implements Exception {}

class CacheException implements Exception {}

class ServerTimeoutException implements Exception {}

class ServerException implements Exception {}

class NotFoundException implements Exception {}

class BadRequestException implements Exception {
  final String errorMessage;

  BadRequestException(this.errorMessage);
}
