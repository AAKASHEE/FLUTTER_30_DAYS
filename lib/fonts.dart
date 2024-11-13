import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            'LIFESTYLE DECIDES YOUR DESTINY',
            style: GoogleFonts.ptSans(
                fontSize: 50,
                fontWeight:
                    FontWeight.w600), // Specify a font from Google Fonts here
          ),
        ),
      ),
    );
  }
}
