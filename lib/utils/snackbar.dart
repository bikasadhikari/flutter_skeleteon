//this file contains the function to show the snackbar with text and background color
//created by Bikas Adhikari on 03-08-2022

import 'package:flutter/material.dart';
import 'package:teho_controller/constants/enums.dart';
import 'package:teho_controller/constants/globals.dart';

//function to return background color of the snackbar
Color getColor(Types type) {
  switch (type) {
    case Types.success:
      return Colors.green;
    case Types.error:
      return Colors.red;
    case Types.warning:
      return Colors.orange;
    case Types.info:
      return Colors.blue;
  }
}

void showSnackbar({
  required String text,
  required Types type,
}) {
  Global.snackbarKey.currentState?.showSnackBar(
    SnackBar(
      content: Text(text),
      backgroundColor: getColor(type),
    ),
  );
}

void showSnackbarWithAction({
  required String text,
  required Types type,
  required VoidCallback callback,
  required String buttonText,
  required BuildContext context,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
      backgroundColor: getColor(type),
      action: SnackBarAction(
        label: buttonText,
        onPressed: () {
          callback();
        },
        textColor: Colors.white,
      ),
      duration: const Duration(days: 1),
      behavior: SnackBarBehavior.fixed,
    ),
  );
}
