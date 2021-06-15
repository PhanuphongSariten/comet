import 'package:flutter/material.dart';
import 'screens/launcher.dart';
import 'screens/profile_screen.dart';
import 'screens/home_screen.dart';
import 'theme.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}
