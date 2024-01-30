import 'dart:async';

import 'package:book_my_movie/core/error/custom_error.dart';
import 'package:book_my_movie/core/utils/result.dart';
import 'package:dio/dio.dart';

Future<Result<T>> transformRequest<T>(Future<T> Function() request) async {
  try {
    var result = await request();
    return Result(data: result);
  } on DioException catch (e) {
    final _error = CustomError(
      code: '${e.response?.statusCode ?? ''}',
      message: e.message,
    );
    return Result(data: null, error: _error);
  } catch (e) {
    final _error = CustomError(message: 'UNKNOWN ERROR ${e.toString()}');
    return Result(data: null, error: _error);
  }
}
