import 'package:flutter/material.dart';

class Palette {
  static const Color iconColor = Color(0xFFB6C7D1);
  static const Color activeColor = Color(0xFF09126C);
  static const Color textColor1 = Color(0XFFA7BCC7);
  static const Color textColor2 = Color(0XFF9BB3C0);
  static const Color textColor3 = Colors.black54;
  static const Color facebookColor = Color(0xFF3B5999);
  static const Color googleColor = Color(0xFFDE4B39);
  static const Color backgroundColor = Color(0xFFECF3F9);
  static const Color appPrimaryColor =
      Color.fromRGBO(255, 152, 0, 1); //hex: #EF5350

  static const MaterialColor primarySwatch = MaterialColor(
    0xff9800, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color.fromRGBO(255, 152, 0, 0.1), //10%
      100: Color.fromRGBO(255, 152, 0, 0.2), //20%
      200: Color.fromRGBO(255, 152, 0, 0.5), //30%
      300: Color.fromRGBO(255, 152, 0, 0.5), //40%
      400: Color.fromRGBO(255, 152, 0, 0.5), //50%
      500: Color.fromRGBO(255, 152, 0, 0.6), //60%
      600: Color.fromRGBO(255, 152, 0, 0.7), //70%
      700: Color.fromRGBO(255, 152, 0, 0.8), //80%
      800: Color.fromRGBO(255, 152, 0, 0.9), //90%
      900: Color.fromRGBO(255, 152, 0, 1), //100%
    },
  );
}
