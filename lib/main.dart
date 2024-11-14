import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart'; // <-- Add this import for system UI customization

import 'pages/login_page.dart';
import 'pages/home_page.dart';

void main() {
  // Set system UI overlay style to black for status and navigation bars
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.black, // Make the status bar black
      statusBarIconBrightness: Brightness.light, // Light icons for status bar
      systemNavigationBarColor: Colors.black, // Make navigation bar black
      systemNavigationBarIconBrightness:
          Brightness.light, // Light icons for navigation bar
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false, // Hide debug banner
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.ptSans().fontFamily,
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginPage(),
        "/h": (context) => const HomePage(),
        "/l": (context) => const LoginPage(),
      },
    );
  }
}
