import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:zombifi_app/src/pages/buy_chip_page.dart';
import 'package:zombifi_app/src/pages/buy_credit_page.dart';
import 'package:zombifi_app/src/pages/chips_page.dart';
import 'package:zombifi_app/src/pages/home_page.dart';
import 'package:zombifi_app/src/pages/profile_page.dart';
import 'package:zombifi_app/utils/colors.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double _size = 25;
    return Scaffold(
      body: _callPage(_currentIndex),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        backgroundColor: Colors.white,
        color: colorGreen,
        index: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: <Widget>[
          Icon(Icons.home, size: _size),
          Icon(Icons.money_outlined, size: _size),
          Icon(Icons.card_membership_outlined, size: _size),
          Icon(Icons.person, size: _size),
        ],
      ),
    );
  }

  Widget _callPage(int currentPage) {
    switch (currentPage) {
      case 0:
        return HomePage();
      case 1:
        return BuyCreditPage();
      case 2:
        return ChipsPage();
      case 3:
        return ProfilePage();

      default:
        return HomePage();
    }
  }
}
