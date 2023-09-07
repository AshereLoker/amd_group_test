part of core;

class AppInterceptor extends QueuedInterceptorsWrapper {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (await InternetConnectionChecker().hasConnection) {
      return super.onRequest(options, handler);
    }

    return handler.reject(
      NoInternetConnectionError(
        requestOptions: options,
        response: null,
        errMessage: ApiConstants.noInternetConnection,
      ),
    );
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response != null) {
      AppLogger.logResponse(err.response!);
    }

    switch (err.response?.statusCode) {
      case ApiConstants.badRequestCode:
        return super.onError(
          BaseRequestError(
            requestOptions: err.requestOptions,
            response: err.response,
            errMessage: ApiConstants.badRequest,
          ),
          handler,
        );
      case ApiConstants.unauthorizedCode:
        return super.onError(
          UnauthorizedError(
            requestOptions: err.requestOptions,
            response: err.response,
            errMessage: ApiConstants.unauthorized,
          ),
          handler,
        );
      case ApiConstants.forbiddenCode:
        return super.onError(
          ForbiddenError(
            requestOptions: err.requestOptions,
            response: err.response,
            errMessage: ApiConstants.forbidden,
          ),
          handler,
        );
      case ApiConstants.notFoundCode:
        return super.onError(
          NotFoundError(
            requestOptions: err.requestOptions,
            response: err.response,
            errMessage: ApiConstants.notFound,
          ),
          handler,
        );
      case ApiConstants.tooManyRequestCode:
        return super.onError(
          TooManyRequestError(
            requestOptions: err.requestOptions,
            response: err.response,
            errMessage: ApiConstants.tooManyRequest,
          ),
          handler,
        );
      case ApiConstants.serverUnavailableCode:
        return super.onError(
          ServerUnavailableError(
            requestOptions: err.requestOptions,
            response: err.response,
            errMessage: ApiConstants.serverUnavailable,
          ),
          handler,
        );
      case ApiConstants.serverTemporaryUnavailableCode:
        return super.onError(
          ServerTemporaryUnavailableError(
            requestOptions: err.requestOptions,
            response: err.response,
            errMessage: ApiConstants.serverTemporaryUnavailable,
          ),
          handler,
        );
      default:
        return super.onError(
          UnknowError(
            requestOptions: err.requestOptions,
            response: err.response,
            errMessage: ApiConstants.unknowError,
          ),
          handler,
        );
    }
  }
}
