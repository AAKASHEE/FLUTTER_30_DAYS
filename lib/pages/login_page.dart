import 'package:flutter/material.dart';
import 'package:flutter_build_01/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/joker.png',
              height: 500,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 25.0,
              child: Text(
                "NEVERTHELESS",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            Text(
              "Welcome $name",
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 60.0),
              child: Column(
                children: [
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                      hintStyle: TextStyle(color: Colors.grey),
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    obscureText: true,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                      hintStyle: TextStyle(color: Colors.grey),
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 40.0),

                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      // Wait for animation and then navigate
                      await Future.delayed(const Duration(seconds: 1));
                      Navigator.pushNamed(context, Myroutes.homeRoute);
                      setState(() {
                        changeButton = false; // Reset the button after navigation
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(changeButton ? 25 : 8),
                      ),
                      child: changeButton
                          ? const Icon(
                              Icons.done,
                              color: Colors.black,
                            )
                          : const Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                    ),
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
