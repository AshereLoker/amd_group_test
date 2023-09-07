class ApiConstants {
  ApiConstants._();

  // Pexels api auth key.
  static const String apiKey =
      'dygiRfCWPkKSCDNBavpO64OUYZ8Jd05s0nbdiiss2Dl3negZvNOLD9g8';

  // Pexels base api url.
  static const String baseUrl = 'https://api.pexels.com/v1/';

  // Pexels get paged endpoint.
  static String pagedPhotos(int page) =>
      'curated?page=$page&per_page=$photoPerPage';

  // Photos per request.
  // Maximum with Pexels API equals to 80.
  static const int photoPerPage = 80;

  // Errors.
  static const String noInternetConnection = 'NO_INTERNET_CONNECTION';
  static const String unauthorized = 'UNAUTHORIZED';
  static const String unknowError = 'UNAUTHORIZED';
  static const String forbidden = 'FORBIDDEN';
  static const String badRequest = 'BAD_REQUEST';
  static const String notFound = 'NOT_FOUND';
  static const String tooManyRequest = 'TOO_MANY_REQUEST';
  static const String serverUnavailable = 'SERVER_UNAVAILABLE';
  static const String serverTemporaryUnavailable =
      'SERVER_TEMPORARY_UNAVAILABLE';

  // Status codes.
  static const int badRequestCode = 400;
  static const int unauthorizedCode = 401;
  static const int forbiddenCode = 403;
  static const int notFoundCode = 404;
  static const int tooManyRequestCode = 429;
  static const int serverUnavailableCode = 500;
  static const int serverTemporaryUnavailableCode = 503;

  // Timeouts.
  static const Duration sendingTimeoutDuration = Duration(milliseconds: 10000);
  static const Duration connectTimeoutDuration = Duration(milliseconds: 30000);
}
