import 'dart:async';

import 'package:dio/dio.dart';
import 'package:new_app/Dio/Endpoint.dart';

class Helpers {
  static late Dio dio;

  static init() {
    dio = Dio(BaseOptions(
        baseUrl: baseurl,
        connectTimeout: const Duration(seconds: 40),
        receiveTimeout: const Duration(seconds: 40),
        receiveDataWhenStatusError: true,
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json));
  }

//get Data
  static Future<Response> GetData({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    return await Helpers.dio.get(url,
        queryParameters: query,
        options: Options(headers: {
          'authorization': "Bearer $token",
          "Content-Type": "application/json",
          "Accept-Language": "EN",
        }));
  }
}
