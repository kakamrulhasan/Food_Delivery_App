import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_14/ui/auth/signup_page.dart';
import 'package:flutter_application_14/ui/bottom_navigator.dart';
import 'package:flutter_application_14/ui/widgets/Or_devider.dart';
import 'package:flutter_application_14/ui/widgets/app_button.dart';
import 'package:flutter_application_14/ui/widgets/app_text_field.dart';
import 'package:flutter_application_14/ui/widgets/page_title.dart';
import 'package:flutter_application_14/ui/widgets/remember_me_checkbox.dart';
import 'package:flutter_application_14/ui/widgets/social_icon_button.dart';
import 'package:google_fonts/google_fonts.dart';

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
            SizedBox(height: 90),
            PageTitle(title: 'Login'),
            SizedBox(height: 20),
            AppTextField(
              controller: email,
              hint: 'Enter your email',
              icon: Icons.email,
            ),
            const SizedBox(height: 5),
            AppTextField(
              controller: password,
              hint: 'Enter your password',
              icon: Icons.remove_red_eye_rounded,
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
            AppButton(
              title: 'Login',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomNavigator()),
                );
              },
            ),
            SizedBox(height: 40),
            OrDivider(text: 'Or sign in with'),
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
            text: ' Register',
            style: GoogleFonts.fahkwang(
              color:Colors.redAccent.withOpacity(0.9),
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => SignupPage()),
                );
              },
          ),
        ],
      ),
    );
  }
}
