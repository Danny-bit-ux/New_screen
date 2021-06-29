import 'package:flutter/material.dart';
import 'package:flutter_screen/components/screens/home_screen.dart';

import '../settings_screen.dart';

class MyBottomBar extends StatefulWidget {
  MyBottomBar({Key key}) : super(key: key);

  @override
  _BotNavBarState createState() => _BotNavBarState();
}

class _BotNavBarState extends State<MyBottomBar> {
  int _currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      HomeScreen(),
      const Center(
        child: Icon(
          Icons.alarm,
          size: 64,
          color: Colors.teal,
        ),
      ),
      SettingsScreen(),
    ];
    final _kBottomNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      const BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'History'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.ac_unit), label: 'Settings'),
    ];
    assert(_kTabPages.length == _kBottomNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      items: _kBottomNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return Scaffold(
      body: _kTabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
