import 'package:flutter_dotenv/flutter_dotenv.dart';

class Endpoints {
  static String baseUrl = dotenv.get('BASE_URL');
  static const String refreshToken = '/auth/refresh-token';
}

class Environment {
  static String prodEnvFileName = ".env";
  static String devEnvFileName = ".env.dev";
}
