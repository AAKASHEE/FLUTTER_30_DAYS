import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final int = 30;
    final String Name = "AAKASHEE";

    return Scaffold(
      appBar: AppBar(title: Text("CATALOG AAKASHEE")),
      body: Center(
        child: Container(
          child: Text("DAY 02 OF LEARNING TO LIVE "),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
