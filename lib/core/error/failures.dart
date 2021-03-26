abstract class Failure {
  @override
  List<Object> get props => [];
}

// General failures
class ServerFailure extends Failure {}

class CacheFailure extends Failure {}

class UnauthorisedFailure extends Failure {}

class ServerTimeoutFailure extends Failure {}

class BadRequestFailure extends Failure {
  final String errorMessage;
  BadRequestFailure({this.errorMessage});
  @override
  List<Object> get props => [errorMessage];
}

class NotFoundFailure extends Failure {}

class UnexpectedFailure extends Failure {
  final String errorMessage;

  UnexpectedFailure(this.errorMessage);
  @override
  List<Object> get props => [errorMessage];
}

String mapFailureToMessage(Failure failure) {
  switch (failure.runtimeType) {
    case ServerFailure:
      return "Server failure";
    case ServerTimeoutFailure:
      return "Server timeout";
    case CacheFailure:
      return "Failure cache";
    case UnauthorisedFailure:
      return "Unauthorized";
    case NotFoundFailure:
      return "Not found";
    case UnexpectedFailure:
      return (failure as UnexpectedFailure).errorMessage;
    case BadRequestFailure:
      return (failure as BadRequestFailure).errorMessage;
    default:
      return 'Unexpected Error';
  }
}
