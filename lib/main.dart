import 'package:flutter/material.dart';
import 'package:flutter_app_1/pages/homepage.dart';
import 'package:flutter_app_1/pages/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';
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
        fontFamily: GoogleFonts.lato().fontFamily,
        // primaryTextTheme: GoogleFonts.latoTextTheme()
        // brightness: Brightness.dark,
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => LoginPage(),
          "/home": (context) => HomePage(),
          "/login": (context) => LoginPage(),
        },
    );
  }
}
