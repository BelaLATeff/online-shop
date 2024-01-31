abstract class ErrorExceptions implements Exception {
  String errorMSG;
  ErrorExceptions(this.errorMSG);
}

class ServerException extends ErrorExceptions {
  ServerException(super.errorMSG);
}

class RequestException extends ErrorExceptions {
  RequestException(super.errorMSG);
}

class NetworkException implements ErrorExceptions {
  @override
  String errorMSG = 'Internet Connection | Check your network connection.';
}

class UnauthenticatedException implements ErrorExceptions {
  @override
  String errorMSG = 'Unauthenticated | You need to Re-login';
}
