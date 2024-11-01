import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../extensions/validation/string_validation.dart';

class TokensSecureStorage {
  static const FlutterSecureStorage _secureStorage = FlutterSecureStorage();
  static const _apiAccessTokenKey = "apiAccessToken";
  static const _apiRefreshTokenKey = "apiRefreshToken";

  Future<void> updateTokens({
    String? accessToken,
  }) async {
    if (accessToken.hasActualValue) {
      await _secureStorage.write(key: _apiAccessTokenKey, value: accessToken);
    }
  }

  Future<void> saveAccessToken(String accessToken) async {
    await _secureStorage.write(key: _apiAccessTokenKey, value: accessToken);
  }

  Future<void> saveRefreshToken(String refreshToken) async {
    await _secureStorage.write(key: _apiRefreshTokenKey, value: refreshToken);
  }

  Future<bool> hasAccessToken() async {
    final apiAccessToken = await _secureStorage.read(key: _apiAccessTokenKey);
    return apiAccessToken.hasActualValue;
  }

  Future<void> deleteAccessToken() async {
    await _secureStorage.delete(key: _apiAccessTokenKey);
  }

  Future<void> deleteRefreshToken() async {
    await _secureStorage.delete(key: _apiRefreshTokenKey);
  }

  Future<String?> getAccessToken() async {
    final apiAccessToken = await _secureStorage.read(key: _apiAccessTokenKey);
    return apiAccessToken;
  }

  Future<String?> getRefreshToken() async {
    final apiRefreshToken = await _secureStorage.read(key: _apiRefreshTokenKey);
    return apiRefreshToken;
  }

  Future<void> clearTokens() async {
    await _secureStorage.deleteAll();
  }
}
