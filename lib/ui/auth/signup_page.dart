import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_14/ui/widgets/Or_devider.dart';
import 'package:flutter_application_14/ui/widgets/app_button.dart';
import 'package:flutter_application_14/ui/widgets/app_text_field.dart';
import 'package:flutter_application_14/ui/widgets/page_title.dart';
import 'package:flutter_application_14/ui/widgets/remember_me_checkbox.dart';
import 'package:flutter_application_14/ui/widgets/social_icon_button.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatefulWidget {
  SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final number = TextEditingController();

  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            PageTitle(title: 'SignUp'),
            SizedBox(height: 20),
            AppTextField(
              controller: name,
              hint: 'Full Name',
              icon: Icons.person,
            ),
            AppTextField(controller: email, hint: 'Email', icon: Icons.email),
            AppTextField(
              controller: number,
              hint: 'Contact Number',
              icon: Icons.phone,
            ),
            AppTextField(
              controller: password,
              hint: 'Password',
              obscure: true,
              icon: Icons.lock,
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
            Spacer(),
            AppButton(title: 'Create Account', onPressed: () {}),
            SizedBox(height: 40),
            OrDivider(text: 'Or Sign Up with',),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularSocialButton(
                  assetPath: "assets/google.png",
                  onPressed: () {},
                ),
                const SizedBox(width: 20),
                CircularSocialButton(
                  assetPath: "assets/facebook.png",
                  onPressed: () {},
                ),
                const SizedBox(width: 20),
                CircularSocialButton(
                  assetPath: "assets/apple.png",
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 20),
            addRegister(context),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  RichText addRegister(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Don't have an account?",
        style: const TextStyle(color: Colors.black),
        children: [
          TextSpan(
            text: ' Sign In',
            style: GoogleFonts.fahkwang(
              color: Colors.deepOrangeAccent.shade700,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pop(context);
              },
          ),
        ],
      ),
    );
  }
}
