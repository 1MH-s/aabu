import 'package:aabu/controllers/register_controller.dart';
import 'package:aabu/widgets/email_text_form_field.dart';
import 'package:aabu/widgets/password_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailTextController = TextEditingController();
    TextEditingController passwordTextController = TextEditingController();
    TextEditingController conformPasswordTextController =
        TextEditingController();
    RegisterController registerController = Get.put(RegisterController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 24),
            Image.asset("assets/images/logo/aabu_logo_1024x1024.png",
                width: 200, height: 200),
            const Text("AL AlBayt University", style: TextStyle(fontSize: 32)),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  EmailTextFormField(emailTextController: emailTextController),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PasswordTextFormField(
                  passwordController: passwordTextController),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PasswordTextFormField(
                passwordController: conformPasswordTextController,
                labelText: "Conform password",
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () async {
                  registerController.register(
                      email: "${emailTextController.text}@st.aabu.edu.jo",
                      password: passwordTextController.text);
                },
                color: Get.theme.primaryColor,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Register"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
