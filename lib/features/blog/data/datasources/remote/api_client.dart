import 'package:auto_route/auto_route.dart';
import 'package:blog/features/blog/data/datasources/remote/api_constant.dart';
import 'package:blog/features/blog/data/datasources/remote/api_endpoint_urls.dart';
import 'package:blog/utils/utils.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiClient {
  late Dio dio;
  late BaseOptions options;
  ApiClient() {
    options = BaseOptions(baseUrl: ApiConstant.mainUrl);
    dio = Dio(options);
    dio.interceptors.add(PrettyDioLogger());
    dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));
  }

  Future<Response> getRequest({required String path}) async {
    try {
      // 404
      var response = await dio.get(path);

      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data);
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiException(message: e.response!.statusMessage.toString());
      } else {
        debugPrint(e!.requestOptions.toString());
        debugPrint(e.message);
        throw ApiException(message: e.response!.statusMessage.toString());
      }
    }
  }

  Future<Response> postRequest({required String path, dynamic body}) async {
    var token = await Utils.getToken();
    final options = Options(headers: {"Authorization": "Bearer $token"});
    try {
      // 404
      var response = await dio.post(path, data: body, options: options);
      debugPrint(response.statusCode.toString());
      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        debugPrint(e.response!.data.toString());
        debugPrint(e.response!.headers.toString());
        debugPrint(e.response!.requestOptions.toString());
        throw ApiException(message: e.response!.statusMessage.toString());
      } else {
        debugPrint(e!.requestOptions.toString());
        debugPrint(e.message);
        throw ApiException(message: e.response!.statusMessage.toString());
      }
    }
  }
}

class ApiException implements Exception {
  final dynamic message;

  ApiException({required this.message});
  @override
  String toString() {
    if (message is String) {
      return message;
    }
    return "Error Occurred: ${message}";
  }
}
