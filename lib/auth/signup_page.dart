import 'package:flutter/material.dart';
import 'package:flutter_application_14/widgets/app_button.dart';
import 'package:flutter_application_14/widgets/app_text_field.dart';
import 'package:flutter_application_14/widgets/page_title.dart';


class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Signup')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [PageTitle(title: 'SignUp'),
            AppTextField(
              controller: name,
              hint: 'Full Name',
              icon: Icons.person,
            ),
            AppTextField(controller: email, hint: 'Email', icon: Icons.email),
            AppTextField(
              controller: password,
              hint: 'Password',
              obscure: true,
              icon: Icons.lock,
            ),
            const SizedBox(height: 20),
            AppButton(title: 'Create Account', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
