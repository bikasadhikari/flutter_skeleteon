import 'package:dio/dio.dart';

class EndPoints {
  EndPoints._();

  static const String baseUrl = "";

  static const int receiveTimeout = 15000;

  static const int connectionTimeout = 30000;

  static BaseOptions options = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: connectionTimeout,
    receiveTimeout: receiveTimeout,
  );
}
