import 'package:aabu/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordTextFormField extends StatelessWidget {
  const PasswordTextFormField({
    super.key,
    required this.passwordController,
    this.labelText,
  });

  final TextEditingController passwordController;
  final String? labelText;
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
            labelText: labelText?? "Password",
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

class PasswordTextFormFieldController extends GetxController {

}