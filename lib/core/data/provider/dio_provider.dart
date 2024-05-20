import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
Dio dio(DioRef ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://pokeapi.co/api/v2/',
      validateStatus: (status) {
        return status != null && status >= 200 && status < 300 || status == 304;
      },
    ),
  );

  return dio;
}
