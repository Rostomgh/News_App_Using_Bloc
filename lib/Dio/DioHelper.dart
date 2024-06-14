import 'dart:async';
import 'package:dio/dio.dart';

const String baseUrl = 'https://newsapi.org/';
const String apiKey = '2d992b851f8a42359945e81ed30c9eac';

class Helpers {
  static late Dio dio;

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 40),
      receiveTimeout: const Duration(seconds: 40),
      receiveDataWhenStatusError: true,
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
    ));
  }

  // Get Data
  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    query ??= {};
    query['apiKey'] = apiKey;

    return await dio.get(
      url,
      queryParameters: query,
      options: Options(headers: {
        'authorization': "Bearer $token",
        "Content-Type": "application/json",
        "Accept-Language": "EN",
      }),
    );
  }
}
