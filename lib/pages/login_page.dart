import 'package:flutter/material.dart';
import 'package:flutter_build_01/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Center the column vertically
          children: [
            Image.asset('assets/images/joker.png',
                height: 700, fit: BoxFit.cover),
            SizedBox(
                height: 25.0,
                child: Text(
                  "NEVERTHELESS",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                )),
            Text(
              "Welcome AAKASHEE",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 60.0),
              child: Column(
                children: [
                  TextFormField(
                    style: TextStyle(
                        color: Colors.white), // Set text color to white
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    obscureText: true, // For password input
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context,Myroutes.homeRoute);
                    },
                    style: TextButton.styleFrom(minimumSize:Size( 40,40)),
                    child: Text("login"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
