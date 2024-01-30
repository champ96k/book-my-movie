import 'dart:async';
import 'dart:io';

import 'package:book_my_movie/core/constant/constants.dart';
import 'package:book_my_movie/core/services/network_services/http_service.dart';
import 'package:dio/dio.dart';
import 'package:dio_http2_adapter/dio_http2_adapter.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioHttpService implements HttpService {
  factory DioHttpService() => _instance;

  DioHttpService.internal() {
    /// Interceptor for pretty logging of Dio requests and responses
    final Interceptor prettyInterceptor = PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
    );

    /// Initialize the Dio instance with default options and adapters
    _dio = Dio(BaseOptions(connectTimeout: const Duration(milliseconds: 10000)))
      ..httpClientAdapter = Http2Adapter(ConnectionManager())
      ..interceptors.add(
        LogInterceptor(
          request: true,
          requestBody: false,
          requestHeader: false,
          responseBody: false,
          responseHeader: false,
        ),
      );

    /// Add the pretty logger interceptor only in debug mode
    if (kDebugMode) {
      _dio.interceptors.add(prettyInterceptor);
    }
  }

  static final DioHttpService _instance = DioHttpService.internal();

  late Dio _dio;

  @override
  Future<Response> handleGetRequest(
    String path, {
    Map<String, String?>? headers,
  }) async {
    return await _dio.get(path,
        options: await getOptionWithToken(headers: headers));
  }

  @override
  Future<Response> handlePostRequest(
    String path,
    dynamic data, {
    Map<String, String>? headers,
  }) async {
    return await _dio.post(path,
        data: data, options: await getOptionWithToken(headers: headers));
  }

  @override
  Future<Response> handlePutRequest(
    String path, {
    Map<String, dynamic>? data,
    Map<String, String>? headers,
  }) async {
    return await _dio.put(path,
        data: data, options: await getOptionWithToken(headers: headers));
  }

  @override
  Future<Response> handleDeleteRequest(
    String path, {
    Map<String, String>? headers,
  }) async {
    return _dio.delete(path,
        options: await getOptionWithToken(headers: headers));
  }

  @override
  Future<Response> handleGetRequestWithoutToken(String path) async {
    return await _dio.get(
      path,
      options: getOptionWithoutToken(),
    );
  }

  @override
  Future<Response> handlePostRequestWithoutToken(String path,
      [Map<String, dynamic>? data]) async {
    return await _dio.post(
      path,
      data: data,
      options: getOptionWithoutToken(),
    );
  }

  @override
  Future<Response> handlePutRequestWithoutToken(String path,
      [Map<String, dynamic>? data]) async {
    return await _dio.put(
      path,
      data: data,
      options: getOptionWithoutToken(),
    );
  }

  @override
  Future<Response> handleDeleteRequestWithoutToken(String path) async {
    return _dio.delete(
      path,
      options: getOptionWithoutToken(),
    );
  }

  @override
  Future<Response> handlePostRequestList(String path, List<dynamic>? data,
      {Map<String, String>? headers}) async {
    return await _dio.post(path,
        data: data, options: await getOptionWithToken(headers: headers));
  }

  Future<Options> getOptionWithToken({Map<String, String?>? headers}) async {
    final _headers = {
      HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
      HttpHeaders.authorizationHeader: Constants.authKey,
    };

    return Options(headers: _headers);
  }

  Options getOptionWithoutToken() {
    return Options(
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
      },
    );
  }
}
