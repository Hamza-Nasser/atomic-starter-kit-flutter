import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'network/client/dio_restful_client.dart';
import 'network/client/restful_client.dart';

final sl = GetIt.instance;

void setup() {
  sl.registerLazySingleton<Dio>(() => Dio());
  sl.registerLazySingleton<RestfulClient>(() => DioRestfulClient(sl<Dio>()));
}
