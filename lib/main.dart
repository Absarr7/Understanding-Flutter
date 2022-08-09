import 'package:flutter/material.dart';
import 'package:practice_app/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_app/screens/learn_flutter.dart';
import 'package:practice_app/screens/login.dart';
import 'package:practice_app/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: GoogleFonts.poppins().fontFamily,
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: MyRoutes.loginRoute,
      routes: {
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const Login(),
        MyRoutes.learnRoute: (context) => const LearnFlutter(),
      },
    );
  }
}
