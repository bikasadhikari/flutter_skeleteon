import 'package:flutter/material.dart';
import 'package:teho_controller/constants/Palette.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final bool isReadOnly;
  final String labelText;
  final TextInputType textInputType;
  final bool isObscureText;

  const CustomTextFormField({
    Key? key,
    required this.controller,
    this.isReadOnly = false,
    required this.labelText,
    this.textInputType = TextInputType.text,
    this.isObscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText,
      keyboardType: textInputType,
      readOnly: isReadOnly,
      controller: controller,
      cursorColor: Palette.textColor1,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: Palette.textColor3, fontSize: 17),
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Palette.textColor1, width: 0.5),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Palette.textColor1, width: 0.5),
        ),
      ),
      style: const TextStyle(
        color: Palette.textColor3,
      ),
    );
  }
}
