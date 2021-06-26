import 'package:comet/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'theme.dart';
import 'screens/';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
