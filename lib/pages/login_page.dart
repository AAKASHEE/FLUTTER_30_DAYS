import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Center the column vertically
        children: [
          Image.asset('assets/images/joker.png',
              width: 580, height: 580, fit: BoxFit.contain),
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
            "      Welcome AAKASHEE",
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
                  style:
                      TextStyle(color: Colors.white), // Set text color to white
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
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Hi AAKAShEE");
                  },
                  style: TextButton.styleFrom(),
                  child: Text("login"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
