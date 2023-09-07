part of core;

// ignore: avoid_classes_with_only_static_members
class AppLogger {
  static final _logger = Logger(
    level: null,
    printer: PrettyPrinter(
      methodCount: 9,
      errorMethodCount: 9,
      lineLength: 100,
      colors: true,
      printEmojis: true,
      printTime: true,
    ),
  );

  static void logResponse(Response<dynamic> response) {
    final dynamic data = _formatJson(response.data);
    final message = '--- request ---\n'
        'path: ${response.realUri} - ${response.requestOptions.path}\n'
        'data: ${_formatJson(response.requestOptions.data)}\n'
        'method: ${response.requestOptions.method}\n'
        'headers: ${_formatJson(response.requestOptions.headers)}\n'
        'queryParameters: ${response.requestOptions.queryParameters}\n'
        '--- response ---\n'
        'status code: ${response.statusCode}\n'
        'data: $data';

    _logger.i(message);
  }

  static dynamic _formatJson(dynamic json) {
    try {
      return const JsonEncoder.withIndent('  ').convert(json);
      // ignore: avoid_catches_without_on_clauses
    } catch (_) {
      return json;
    }
  }

  static void logError({
    String? message,
    Object? error,
    StackTrace? stackTrace,
  }) {
    _logger.e(
      message,
      error: error,
      stackTrace: stackTrace,
    );
  }
}
