import 'package:flutter/material.dart';

class BotNavBar extends StatefulWidget {
  BotNavBar({Key key}) : super(key: key);

  @override
  _BotNavBarState createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  int _currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      const Center(
        child: Icon(
          Icons.cloud,
          size: 64,
          color: Colors.teal,
        ),
      ),
      const Center(
        child: Icon(
          Icons.alarm,
          size: 64,
          color: Colors.teal,
        ),
      ),
      const Center(
        child: Icon(
          Icons.ac_unit,
          size: 64,
          color: Colors.teal,
        ),
      ),
    ];
    final _kBottomNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(icon: Icon(Icons.cloud), label: 'Cloud'),
      const BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'History'),
      const BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'New'),
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
