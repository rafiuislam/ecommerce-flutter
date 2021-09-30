import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/homepage.dart';
import 'package:flutter_app_1/pages/loginpage.dart';
import 'pages/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.cyan),
      darkTheme: ThemeData(
        primarySwatch: Colors.brown,
        // brightness: Brightness.dark,
        ),
        initialRoute: "/home",
        routes: {
          "/": (context) => LoginPage(),
          "/home": (context) => HomePage(),
          "/login": (context) => LoginPage(),
        },
    );
  }
}
