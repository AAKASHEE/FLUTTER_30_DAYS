import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 248, 202, 0), // Yellow background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo Text
            RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 65, // Large font size for "blinkit"
                  fontWeight: FontWeight.w900, // Bold font
                ),
                children: [
                  TextSpan(
                    text: 'blink',
                    style: TextStyle(color: Color.fromARGB(255, 32, 30, 30)),
                  ),
                  TextSpan(
                    text: 'it',
                    style: TextStyle(color: Color.fromRGBO(3, 138, 8, 1)),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10), // Spacing between texts

            // Subtitle Text
            const Text(
              "India’s Last Minute App",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w600, // Bold font
              ),
            ),

            const SizedBox(height: 20), // Additional spacing

            // Custom Line with gradient effect
            Container(
              height: 2, // Line thickness
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromRGBO(204, 122, 0, 1), // Yellow ochre color
                    Colors.transparent, // Fade to transparent
                  ],
                  stops: [.4, 1], // Make the gradient fade towards the ends
                ),
              ),
            ),

            const SizedBox(height: 20), // Spacing after the line

            // Footer Text
            const Text(
              "A ZOMATO COMPANY",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w900, // Bold font
                letterSpacing: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
