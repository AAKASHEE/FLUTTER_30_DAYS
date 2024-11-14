import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/pages.dart'; // Make sure you have HomePage defined here

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',

      // Theme settings
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),

      // Set the initial route to '/login'
      initialRoute: "/login",

      // Define named routes
      routes: {
        "/login": (context) =>  LoginPage(),
        "/home": (context) =>  HomePage(),
      },

      // Hide the debug banner
      debugShowCheckedModeBanner: false,
    );
  }
}
