import 'package:flutter/material.dart';
import 'package:teho_controller/constants/Palette.dart';

class NoDataBanner extends StatelessWidget {
  final String text;
  const NoDataBanner({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Palette.textColor2,
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Palette.textColor2,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
