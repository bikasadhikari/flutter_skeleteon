import 'package:flutter/material.dart';

Future<void> customDialog({
  required BuildContext context,
  required String title,
  required String description,
  String buttonText = 'Ok',
  bool isDissmissable = false,
  bool isTwoButtons = false,
  VoidCallback? callback,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: isDissmissable, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(description),
            ],
          ),
        ),
        actions: <Widget>[
          if (!isTwoButtons)
            TextButton(
              child: Text(
                buttonText,
                style: const TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                callback!();
              },
            ),
          if (isTwoButtons)
            TextButton(
              child: Text(buttonText,
                  style: const TextStyle(
                    color: Colors.black,
                  )),
              onPressed: () {
                Navigator.of(context).pop();
                callback!();
              },
            ),
          TextButton(
            child: const Text(
              'Cancel',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
