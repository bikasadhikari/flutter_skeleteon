import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback? onPressed;
  final bool isEnabled;
  const CustomButton({
    Key? key,
    required this.text,
    required this.color,
    this.onPressed,
    this.isEnabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          elevation: 0,
        ),
        onPressed: () {
          isEnabled ? onPressed!() : null;
        },
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
