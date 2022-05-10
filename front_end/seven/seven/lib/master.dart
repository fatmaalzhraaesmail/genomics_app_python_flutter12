import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'articals.dart';
import 'home.dart';

class MasterScreen extends StatefulWidget {
  const MasterScreen({Key? key}) : super(key: key);

  @override
  _MasterScreenState createState() => _MasterScreenState();
}

class _MasterScreenState extends State<MasterScreen> {
  int _currentIndex = 0;

  var _screens = [
    MyHomePage(),
    ArtecalsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    var screens = _screens;
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: Container(child: screens[_currentIndex]),
        bottomNavigationBar: CurvedNavigationBar(
            height: 50,
            // currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            backgroundColor: Color.fromRGBO(66, 98, 94, 1),
            items: [
              Icon(
                Icons.home_outlined,
                color: Color.fromRGBO(66, 98, 94, 1),
              ),
              Icon(
                Icons.layers,
                color: Color.fromRGBO(66, 98, 94, 1),
              ),
            ]),
      ),
    );
  }
}
