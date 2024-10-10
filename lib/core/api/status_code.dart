/// A class that holds common HTTP status codes as static constants.
class StatusCode {
  /// Status code indicating a successful request.
  static const int ok = 200;

  /// Status code indicating a bad request due to client error.
  static const int badRequest = 400;

  /// Status code indicating authentication is required or failed.
  static const int unauthorized = 401;

  /// Status code indicating the client does not have permission to access the resource.
  static const int forbidden = 403;

  /// Status code indicating the requested resource could not be found.
  static const int notFound = 404;

  /// Status code indicating a conflict with the current state of the resource.
  static const int conflict = 409;

  /// Status code indicating a server error occurred while processing the request.
  static const int internalServerError = 500;
}
