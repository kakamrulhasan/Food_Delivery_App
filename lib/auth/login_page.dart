import 'package:flutter/material.dart';
import 'package:flutter_application_14/auth/signup_page.dart';
import 'package:flutter_application_14/widgets/app_button.dart';
import 'package:flutter_application_14/widgets/app_text_field.dart';
import 'package:flutter_application_14/widgets/page_title.dart';
import 'package:flutter_application_14/widgets/remember_me_checkbox.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final email = TextEditingController();
  final password = TextEditingController();
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            PageTitle(title: 'Login',),
            SizedBox(height: 20,),
            AppTextField(
              controller: email,
              hint: 'Enter email',
              icon: Icons.email,
            ),
            const SizedBox(height: 5),

            RememberMeCheckbox(
              value: rememberMe,
              onChanged: (value) {
                setState(() {
                  rememberMe = value ?? false;
                });
              },
            ),
            SizedBox(height: 160),
            AppButton(
              title: 'Login',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()),
                );
              },
            ),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
