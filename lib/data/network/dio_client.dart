//This file contains the http method request boilerplate for the dio client
//Created by Bikas Adhikari on 02-08-2022

// ignore_for_file: avoid_print
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:teho_controller/constants/enums.dart' as enums;
import 'package:teho_controller/utils/dio/dio_error_util.dart';
import 'package:teho_controller/utils/snackbar.dart';

class DioClient {
  final Dio _dio;
  final enums.Actions action;
  final BuildContext context;

  DioClient(this._dio, this.action, this.context);

  //Get:
  Future<dynamic> get(
    String uri, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.get(
        uri,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      if (e is DioError) {
        DioErrorUtil.handleError(e, action, context);
      } else {
        showSnackbar(
          text: 'Something went wrong!',
          type: enums.Types.error,
        );
      }
    }
  }

  //Post:
  Future<dynamic>? post(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final Response response = await _dio.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } catch (e) {
      if (e is DioError) {
        DioErrorUtil.handleError(e, action, context);
      } else {
        showSnackbar(
          text: 'Something went wrong!',
          type: enums.Types.error,
        );
      }
    }
  }

  //download
  Future<dynamic> download(String uri, String fullPath, onReceiveProgress,
      VoidCallback onFailed) async {
    try {
      final Response response = await _dio.download(
        uri,
        fullPath,
        onReceiveProgress: onReceiveProgress,
        deleteOnError: true,
      );
      return response;
    } catch (e) {
      onFailed();
      if (e is DioError) {
        DioErrorUtil.handleError(e, action, context);
      } else {
        showSnackbar(
          text: 'Something went wrong!',
          type: enums.Types.error,
        );
      }
    }
  }
}
