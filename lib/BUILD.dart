import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Define the initial route correctly

      // Theme settings
      themeMode: ThemeMode.light, // Use light mode only
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: "/home",

      // Define your named routes
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
