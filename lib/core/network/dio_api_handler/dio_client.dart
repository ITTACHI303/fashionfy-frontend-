import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
// import 'package:immofind/widgets/common_function.dart';
import 'package:logger/logger.dart';

import 'api_constants.dart';

////*================================================================ DIO LIB USE TO dio: ^5.1.2 and above =================================================================////

class DioClient with ApiConstants {
  DioClient()
      : _dio = Dio(
          BaseOptions(
            baseUrl: ApiConstants.baseUrl,
            connectTimeout: const Duration(seconds: 180),
            receiveTimeout: const Duration(seconds: 180),
            responseType: ResponseType.json,
          ),
        )..interceptors.addAll([
            AuthorizationInterceptor(),
            LoggerInterceptor(),
          ]);

  late final Dio _dio;

  Dio getdio() {
    return _dio;
  }

  // HTTP request methods will go here

  Future<Response> postbycustom<T>(
    context,
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.post(path,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress);
      return response;
    } on DioException catch (err) {
      final errorMessage =
          DioExceptionHandler.fromDioError(err, context).toString();
      return Future.error(errorMessage);
    } catch (e) {
      return Future.error(e);
    }
  }

  Future<Response> putbycustom<T>(
    context,
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.put(path,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress);
      return response;
    } on DioException catch (err) {
      print('error:: $err');
      final errorMessage =
          DioExceptionHandler.fromDioError(err, context).toString();
      return Future.error(errorMessage);
    } catch (e) {
      print('error:11 $e');
      return Future.error(e);
    }
  }

  Future<Response> getbycustom<T>(
    context,
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.get(path,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress);

      print('Response: $response');
      return response;
    } on DioException catch (err) {
      print('Error: 1  $err');
      final errorMessage =
          DioExceptionHandler.fromDioError(err, context).toString();
      print('Error: 2  $errorMessage');
      throw errorMessage;
    } catch (e) {
      print('Error: 3 $e');
      throw e.toString();
    }
  }

  Future<Response> deletebycustom<T>(
    context,
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.delete(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      print('Response: $response');
      return response;
    } on DioException catch (err) {
      print('Error: 1  $err');
      final errorMessage =
          DioExceptionHandler.fromDioError(err, context).toString();
      print('Error: 2  $errorMessage');
      throw errorMessage;
    } catch (e) {
      print('Error: 3 $e');
      throw e.toString();
    }
  }
}

class DioExceptionHandler implements Exception {
  late String errorMessage;
  late String type;

  DioExceptionHandler.fromDioError(DioException dioError, context) {
    Logger()
        .wtf('Error::::::::: ${dioError.type}, Message: ${dioError.message}');
    switch (dioError.type) {
      case DioExceptionType.cancel:
        errorMessage =
            dioError.response?.data['message'] ?? 'Request was cancelled';
        // NkCommonFunction.showError('Error', errorMessage, context);
        break;
      case DioExceptionType.connectionTimeout:
        errorMessage = dioError.message ?? 'Connection timeout';
        // NkCommonFunction.showError('Error', errorMessage, context);
        break;
      case DioExceptionType.receiveTimeout:
        errorMessage = dioError.response?.data['message'] ?? 'Receive timeout';
        // NkCommonFunction.showError('Error', errorMessage, context);
        break;
      case DioExceptionType.sendTimeout:
        errorMessage = dioError.response?.data['message'] ?? 'Send timeout';
        // NkCommonFunction.showError('Error', errorMessage, context);
        break;
      case DioExceptionType.badResponse:
        errorMessage = dioError.response?.data['message'] ??
            'Bad response (Status: ${dioError.response?.statusCode})';
        Navigator.pop(context);
        // NkCommonFunction.showError('Error', errorMessage, context);
        break;
      case DioExceptionType.badCertificate:
        errorMessage =
            dioError.response?.data['message'] ?? 'Invalid certificate';
        // NkCommonFunction.showError('Error', errorMessage, context);
        break;
      case DioExceptionType.connectionError:
        errorMessage = dioError.message ?? 'Connection error';
        // NkCommonFunction.showError('Error', errorMessage, context);
        break;
      default:
        errorMessage = dioError.message ?? 'An unexpected error occurred';
        // NkCommonFunction.showError('Error', errorMessage, context);
        break;
    }
    print('Error:122 $errorMessage');
  }

  @override
  String toString() => errorMessage;
}

class AuthorizationInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (_needAuthorizationHeader(options)) {}
    // continue with the request
    super.onRequest(options, handler);
  }

  bool _needAuthorizationHeader(RequestOptions options) {
    if (options.method == 'GET') {
      return false;
    } else {
      return true;
    }
  }
}

class LoggerInterceptor extends Interceptor {
  Logger logger = Logger(
    // Customize the printer
    printer: PrettyPrinter(
      methodCount: 0,
      colors: true,
      printEmojis: true,
      printTime: false,
    ),
  );

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final options = err.requestOptions;
    final requestPath = '${options.baseUrl}${options.path}';
    logger.e('${options.method} request => $requestPath'); // Debug log
    logger.d('Error: ${err.error}, Message: ${err.message}'); // Error log
    return super.onError(err, handler);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final requestPath = '${options.baseUrl}${options.path}';
    logger.i('${options.method} request => $requestPath'); // Info log
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.d(
        'StatusCode: ${response.statusCode}, Data: ${response.data}'); // Debug log
    return super.onResponse(response, handler);
  }
}
