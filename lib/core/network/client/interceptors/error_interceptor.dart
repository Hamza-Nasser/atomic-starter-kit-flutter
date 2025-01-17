// ignore_for_file: avoid_print

import 'package:dio/dio.dart';

import '../status_code.dart';

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == StatusCode.unauthorized) {
      // Handle unauthorized access (e.g., force logout)
      print('Unauthorized error, status code: 401');
    } else if (err.response?.statusCode == StatusCode.internalServerError) {
      // Handle internal server errors
      print('Server error, status code: 500');
    }
    return handler.next(err); // Forward the error
  }
}
