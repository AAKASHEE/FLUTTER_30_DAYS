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
              width: 300, height: 300, fit: BoxFit.contain),
          SizedBox(
              height: 20.0,
              child: Text(
                "NEVERTHELESS ",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
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
                SizedBox(height: 10),
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
                    print("Hi AAKASHEE");
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
