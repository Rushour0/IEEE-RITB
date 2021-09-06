import 'package:flutter/material.dart';
import "homepage.dart";
import "loginpage.dart";

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Chikitsak';

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: _title,
      theme: ThemeData(
        fontFamily: "Montserrat",
        primaryColor: Colors.black,
        primarySwatch: Colors.teal,
        accentColor: Colors.cyan[600],
        buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: ColorScheme.dark(),
        ) 
      ),
    home: LoginPage(),
    );
  }
}