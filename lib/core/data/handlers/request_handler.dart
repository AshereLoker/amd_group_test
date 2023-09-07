part of core;

class RequestHandler {
  RequestHandler._();

  static Future<D> sendRequest<D, C>({
    required Future<Response<Object>> Function() request,
    required FutureOr<D> Function(C) converter,
  }) async {
    final response = await request();

    AppLogger.logResponse(response);

    return await compute<C, D>(converter, response.data as C);
  }
}
