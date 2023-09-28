import 'package:facbook_home_screen_design/Home/home_screen.dart';
import 'package:facbook_home_screen_design/Login/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "login": (context) => const LoginScreen(),
        "home": (context) => const Home(),
      },
      initialRoute: "login",
    );
  }
}