import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Define the initial route
      initialRoute: "/",
      
      // Theme settings
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.green,
      ),
      
      // Named routes
      routes: {
        "/": (context) => LoginPage(),
        "/HomePage": (context) => HomePage(),
        "/login": (context) => LoginPage(), // Ensure the class name starts with an uppercase letter
      },
    );
  }
}
