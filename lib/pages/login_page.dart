import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Center the column vertically
          children: [
            Image.asset('assets/images/joker.png',
                width: 100, height: 100, fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
