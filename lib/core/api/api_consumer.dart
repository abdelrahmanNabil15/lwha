/// Abstract class defining methods for API consumption.
abstract class ApiConsumer {
  /// Sends a GET request to the specified [path].
  /// Optionally accepts query parameters.
  ///
  /// [path] - The endpoint URL path for the GET request.
  /// [queryParameters] - Optional map of query parameters to include in the request.
  Future<dynamic> get(String path, {Map<String, dynamic>? queryParameters});

  /// Sends a POST request to the specified [path].
  /// Optionally accepts a request body and query parameters.
  ///
  /// [path] - The endpoint URL path for the POST request.
  /// [body] - Optional map of data to include in the request body.
  /// [queryParameters] - Optional map of query parameters to include in the request.
  Future<dynamic> post(String path,
      {Map<String, dynamic>? body, Map<String, dynamic>? queryParameters});

  /// Sends a PUT request to the specified [path].
  /// Optionally accepts a request body and query parameters.
  ///
  /// [path] - The endpoint URL path for the PUT request.
  /// [body] - Optional map of data to include in the request body.
  /// [queryParameters] - Optional map of query parameters to include in the request.
  Future<dynamic> put(String path,
      {Map<String, dynamic>? body, Map<String, dynamic>? queryParameters});
}

