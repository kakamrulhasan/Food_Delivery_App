import 'package:flutter/material.dart';
import 'package:flutter_application_14/ui/auth/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.libreBaskervilleTextTheme(Theme.of(context).textTheme)
      ),
    
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
