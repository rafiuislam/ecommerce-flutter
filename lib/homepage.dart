import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
    final int days = 29;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Catagories"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days App Dev with Flutter!"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
