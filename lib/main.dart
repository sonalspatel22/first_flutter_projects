import 'package:first_flutter_projects/pages/home_page.dart';
import 'package:first_flutter_projects/pages/login.dart';
import 'package:first_flutter_projects/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.teal,
          primaryTextTheme: GoogleFonts.latoTextTheme(),
          fontFamily: GoogleFonts.abel().fontFamily),
      darkTheme: ThemeData(primarySwatch: Colors.teal),
      // home: HomePage(),
      routes: {
        "/": (context) => LoginPage(),
        MyRouts.homeRoute: (context) => HomePage(),
        MyRouts.loginRoute: (context) => LoginPage()
      },
    );
  }

  bringVeg() {
    print("Vegetablesssss");
  }
}
