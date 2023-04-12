import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import '../api/api_connection.dart';

class ConnectivityInterceptor extends Interceptor {
  final Connection requestRetrier;

  ConnectivityInterceptor({
    required this.requestRetrier,
  });

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    if (_shouldRetry(err)) {
      handler.resolve(
        await requestRetrier.scheduleRequestRetry(err.requestOptions),
      );
    }

    super.onError(err, handler);
  }

  bool _shouldRetry(DioError err) => err.type == DioErrorType.unknown && err.error != null && err.error is SocketException && err.error is TimeoutException;
}
