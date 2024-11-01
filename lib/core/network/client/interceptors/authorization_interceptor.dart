import 'package:dio/dio.dart';

import '../tokens_secure_storage.dart';

class AuthInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final tokensSecureStorage = TokensSecureStorage();
    String? token = await tokensSecureStorage.getAccessToken();
    if (token != null) {
      options.headers["Authorization"] = "Bearer $token";
    }
    return handler.next(options);
  }
}
