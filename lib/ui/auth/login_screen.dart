import 'package:flutter/material.dart';
import 'package:teho_controller/common_widgets/custom_button.dart';
import 'package:teho_controller/common_widgets/custom_text_field_with_buttons.dart';
import 'package:teho_controller/common_widgets/custom_text_form_field.dart';
import 'package:teho_controller/constants/Palette.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage('assets/images/logo.png'))),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFieldButton(
                      controller: _emailController,
                      isObscure: false,
                      prefixIcon: Icons.email,
                      labelText: "Email",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFieldButton(
                      controller: _passwordController,
                      isObscure: isObscureText,
                      prefixIcon: Icons.security,
                      labelText: "Password",
                      suffixIconBefore: Icons.visibility_off,
                      suffixIconAfter: Icons.visibility,
                      isActive: isObscureText,
                      suffixIconAction: () {
                        setState(() {
                          isObscureText = !isObscureText;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      text: 'Login',
                      color: Palette.appPrimaryColor,
                      isEnabled: true,
                      onPressed: () {},
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
