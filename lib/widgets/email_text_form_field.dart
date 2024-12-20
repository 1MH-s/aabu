import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({
    super.key,
    required this.emailTextController,
  });

  final TextEditingController emailTextController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailTextController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Email",
        suffixText: "@st.aabu.edu.jo",
      ),
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    );
  }
}