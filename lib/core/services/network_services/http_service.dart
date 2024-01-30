import 'package:dio/dio.dart';

abstract class HttpService {
  Future<Response> handleGetRequest(String path,
      {Map<String, String>? headers});

  Future<Response> handlePostRequest(String path, dynamic data,
      {Map<String, String>? headers});

  Future<Response> handlePostRequestList(String path, List<dynamic>? data,
      {Map<String, String>? headers});

  Future<Response> handlePutRequest(String path,
      {Map<String, dynamic>? data, Map<String, String>? headers});

  Future<Response> handleDeleteRequest(String path,
      {Map<String, String>? headers});

  Future<Response> handleGetRequestWithoutToken(String path);
  Future<Response> handlePostRequestWithoutToken(String path,
      [Map<String, dynamic>? data]);
  Future<Response> handlePutRequestWithoutToken(String path,
      [Map<String, dynamic>? data]);
  Future<Response> handleDeleteRequestWithoutToken(String path);
}
