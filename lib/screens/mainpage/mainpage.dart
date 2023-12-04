import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentnavindex = 0;

  void _changeTab(int index) {
    setState(() {
      _currentnavindex = index;
    });
  }

  List _pages = [
    Center(child: Text('Moments')),
    Center(child: Text('Messages')),
    Center(child: Text('Profile'))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentnavindex],
      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 0,
          unselectedFontSize: 0,
          backgroundColor: Colors.white,
          currentIndex: _currentnavindex,
          onTap: _changeTab,
          elevation: 0,
          items: [
            NavItems(Icons.home, ''),
            NavItems(Icons.message, ''),
            NavItems(Icons.person, ''),
          ]),
    );
  }

  BottomNavigationBarItem NavItems(IconData navicon, String navlabel) {
    return BottomNavigationBarItem(
      icon: Icon(navicon),
      label: navlabel,
    );
  }
}
