import 'package:flutter/material.dart';
import 'package:teho_controller/constants/Palette.dart';

class TextFieldButton extends StatelessWidget {
  final TextEditingController controller;
  final bool isObscure;
  final bool isActive;
  final IconData prefixIcon;
  final IconData? suffixIconBefore;
  final IconData? suffixIconAfter;
  final VoidCallback? suffixIconAction;
  final String labelText;
  const TextFieldButton({
    Key? key,
    required this.controller,
    required this.isObscure,
    required this.prefixIcon,
    this.suffixIconAction,
    required this.labelText,
    this.suffixIconBefore,
    this.suffixIconAfter,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscure,
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
        prefixIcon: Icon(
          prefixIcon,
          color: Palette.iconColor,
        ),
        suffix: suffixIconBefore != null
            ? Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    suffixIconAction!();
                  },
                  child: !isActive
                      ? Icon(
                          suffixIconBefore,
                          color: Palette.textColor1,
                        )
                      : Icon(
                          suffixIconAfter,
                          color: Palette.textColor1,
                        ),
                ),
              )
            : const Icon(
                Icons.abc,
                color: Colors.transparent,
              ),
      ),
      style: const TextStyle(
        color: Palette.textColor3,
      ),
    );
  }
}
