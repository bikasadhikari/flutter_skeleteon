//This file contains the error messages which are handled by Dio for network request
//Created by Bikas Adhikari on 02-08-2022

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:teho_controller/constants/enums.dart' as enums;
import 'package:teho_controller/utils/snackbar.dart';

class DioErrorUtil {
  static void handleError(
      DioError error, enums.Actions action, BuildContext context) {
    // print(error.response);
    bool isInternetAvailable = true;
    String errorDescription =
        "Unexpected error occurred"; //default error message

    switch (error.type) {
      case DioErrorType.cancel:
        errorDescription = "Request to API server was cancelled";
        break;

      case DioErrorType.connectTimeout:
        errorDescription = "Connection timeout with API server";
        break;

      case DioErrorType.other:
        errorDescription =
            "Connection to API server failed due to internet connection";
        isInternetAvailable = false;
        break;

      case DioErrorType.receiveTimeout:
        errorDescription = "Receive timeout in connection with API server";

        break;

      case DioErrorType.response:
        errorDescription =
            "Received invalid status code: ${error.response?.statusCode}";
        break;

      case DioErrorType.sendTimeout:
        errorDescription = "Send timeout in connection with API server";
        break;
    }

    if (isInternetAvailable) {
      if (errorDescription != '') {
        showSnackbar(
          text: errorDescription,
          type: enums.Types.error,
        );
      }
    } else {
      showSnackbar(text: 'No Internet!', type: enums.Types.error);
    }
  }
}
