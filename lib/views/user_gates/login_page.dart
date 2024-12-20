import 'package:aabu/controllers/login_controller.dart';
import 'package:aabu/widgets/email_text_form_field.dart';
import 'package:aabu/widgets/password_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailTextController = TextEditingController();
    TextEditingController passwordTextController = TextEditingController();
    LoginController loginController = Get.put(LoginController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Log in"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
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
            const SizedBox(height: 24),
            MaterialButton(
              onPressed: () async {
                loginController.login(
                    email: "${emailTextController.text}@st.aabu.edu.jo",
                    password: passwordTextController.text);
              },
              color: Theme.of(context).primaryColor,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Log in"),
              ),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("don't have an account?"),
                TextButton(
                    onPressed: () {
                      Get.toNamed("/register_page");
                    },
                    child: const Text("register")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
