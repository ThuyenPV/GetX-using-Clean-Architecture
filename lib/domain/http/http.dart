import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'http_response.dart';

class HttpHelper {
  static getDio() {
    Dio _dio = Dio();
    return _dio;
  }

  static Future<HttpResponse> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    final Dio dio = HttpHelper.getDio();
    debugPrint("--[GET]--: $url");
    final Response response = await dio.get(
      url,
      queryParameters: queryParameters,
      options: options,
    );
    debugPrint("--[GET]--: $url --> DONE");
    return HttpResponse(
      body: response.data,
      headers: response.headers,
      request: response.requestOptions,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      extra: response.extra,
    );
  }

  static Future<HttpResponse> post(String url,
      {data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      Map<String, dynamic>? formData}) async {
    final Dio dio = HttpHelper.getDio();
    debugPrint("--[POST]--: $url");
    if (formData != null) {
      data = HttpHelper.mapToFormData(formData);
    }
    final Response response = await dio.post(
      url,
      data: data,
      queryParameters: queryParameters,
      options: options,
    );
    debugPrint("--[POST]--: $url --> DONE");
    return HttpResponse(
      body: response.data,
      headers: response.headers,
      request: response.requestOptions,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      extra: response.extra,
    );
  }

  static Future<HttpResponse> put(String url,
      {data,
      Map<String, dynamic>? queryParameters,
      Options? options,
      Map<String, dynamic>? formData}) async {
    final Dio dio = HttpHelper.getDio();
    debugPrint("--[PUT]--: $url");
    if (formData != null) {
      data = HttpHelper.mapToFormData(formData);
    }
    final Response response = await dio.put(
      url,
      data: data,
      queryParameters: queryParameters,
      options: options,
    );
    debugPrint("--[PUT]--: $url --> DONE");
    return HttpResponse(
      body: response.data,
      headers: response.headers,
      request: response.requestOptions,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      extra: response.extra,
    );
  }

  static Future<HttpResponse> delete(
    String url, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    final Dio dio = HttpHelper.getDio();
    debugPrint("--[DELETE]--: $url");
    final Response response = await dio.delete(
      url,
      data: data,
      queryParameters: queryParameters,
      options: options,
    );
    debugPrint("--[DELETE]--: $url --> DONE!");
    return HttpResponse(
      body: response.data,
      headers: response.headers,
      request: response.requestOptions,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
      extra: response.extra,
    );
  }

  static FormData mapToFormData(Map<String, dynamic> map) {
    final formData = FormData.fromMap(map);
    final FormData newData = FormData();

    ///
    for (var element in formData.fields) {
      newData.fields.add(MapEntry(element.key, element.value));
    }

    ///
    for (var element in formData.files) {
      if (element.key.contains('[') || element.key.contains(']')) {
        final newKey =
            element.key.replaceAllMapped(RegExp('(\[+[a-zA-Z]+\])'), (match) {
          return '${match[0]}'.replaceAll('[', '.').replaceAll(']', '');
        });
        final newValue = element.value;
        final newEntry = MapEntry(newKey, newValue);
        newData.files.add(newEntry);
      } else {
        newData.files.add(element);
      }
    }
    return newData;
  }
}
