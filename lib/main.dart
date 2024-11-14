import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Centers the image vertically
            children: [
              // Displaying the GPay Image
              Image.asset(
                'assets/images/joker.png', // Path to your image
                height: 400,
                width: 200,
                fit: BoxFit.contain,
              ),
              // Adding Spacer to push the "Google" text down
              // Takes up remaining space
              SizedBox(
                  height:
                      200), // Adjust this value to control how much higher the text is
              // Google Text positioned slightly above the bottom
              Text(
                'Google',
                style: TextStyle(
                  fontSize: 30,
                  color: const Color.fromARGB(255, 181, 180, 180),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
