import 'package:aabu/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordFormField extends StatelessWidget {
  const PasswordFormField({
    super.key,
    required this.passwordController,
  });

  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) {
        return TextFormField(
          controller: passwordController,
          obscureText: controller.isObscure,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: "Password",
            suffixIcon: IconButton(
              icon: Icon(controller.isObscure
                  ? Icons.visibility_off
                  : Icons.visibility),
              onPressed: () {
                controller.toggleObscure();
              },
            ),
          ),
        );
      },
    );
  }
}
