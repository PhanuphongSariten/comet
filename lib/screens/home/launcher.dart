import 'package:comet/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'shop_screen.dart';
import 'profile_screen.dart';
import 'rank_screen.dart';
import 'package:comet/constants.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

/// This is the stateful widget that the main application instantiates.
class Launcher extends StatefulWidget {
  const Launcher({Key key}) : super(key: key);

  @override
  State<Launcher> createState() => _LauncherState();
}

/// This is the private State class that goes with Launcher.
class _LauncherState extends State<Launcher> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ProfileScreen(),
    RankScreen(),
    ShopScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//bottom nav
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.school),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Rank',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Shop',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
