part of core;

class TokenInterceptor extends AppInterceptor {
  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.putIfAbsent('Authorization', () => ApiConstants.apiKey);

    return super.onRequest(options, handler);
  }
}
