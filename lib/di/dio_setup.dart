import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'interceptor.dart';



@module
abstract class AppModule {

  Dio get dio => _dio();
  Dio _dio() {
    var dio = Dio(BaseOptions(
        // baseUrl: baseUrl,
        contentType: "application/json",
        followRedirects: false,
        validateStatus: (status) {
          return status! < 500;
        },
        ));
    dio.interceptors.add(requestInterceptor(dio));
    return dio;
  }
}
