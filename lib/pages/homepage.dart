import 'package:flutter/material.dart';
import 'package:flutter_app_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "App Catagories",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days App Dev with Flutter!"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
