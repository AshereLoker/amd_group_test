part of core;

class BaseRequestError extends DioException implements Exception {
  final String? errMessage;

  BaseRequestError({
    required RequestOptions requestOptions,
    required Response<dynamic>? response,
    required this.errMessage,
  }) : super(
          requestOptions: requestOptions,
          response: response,
        );

  @override
  String toString() => '$message\n$stackTrace';

  @override
  StackTrace get stackTrace => StackTrace.fromString(
        'path: ${requestOptions.path}\n'
        'headers: ${requestOptions.headers},\n'
        'queryParameters: ${requestOptions.queryParameters},\n'
        'data: ${requestOptions.data},\n'
        'response: ${response?.data}',
      );
}

class BadRequestError extends BaseRequestError {
  BadRequestError({
    required super.requestOptions,
    required super.response,
    required super.errMessage,
  });
}

class ForbiddenError extends BaseRequestError {
  ForbiddenError({
    required super.requestOptions,
    required super.response,
    required super.errMessage,
  });
}

class NoInternetConnectionError extends BaseRequestError {
  NoInternetConnectionError({
    required super.requestOptions,
    required super.response,
    required super.errMessage,
  });
}

class ServerTemporaryUnavailableError extends BaseRequestError {
  ServerTemporaryUnavailableError({
    required super.requestOptions,
    required super.response,
    required super.errMessage,
  });
}

class ServerUnavailableError extends BaseRequestError {
  ServerUnavailableError({
    required super.requestOptions,
    required super.response,
    required super.errMessage,
  });
}

class NotFoundError extends BaseRequestError {
  NotFoundError({
    required super.requestOptions,
    required super.response,
    required super.errMessage,
  });
}

class TooManyRequestError extends BaseRequestError {
  TooManyRequestError({
    required super.requestOptions,
    required super.response,
    required super.errMessage,
  });
}

class UnknowError extends BaseRequestError {
  UnknowError({
    required super.requestOptions,
    required super.response,
    required super.errMessage,
  });
}

class UnauthorizedError extends BaseRequestError {
  UnauthorizedError({
    required super.requestOptions,
    required super.response,
    required super.errMessage,
  });
}
