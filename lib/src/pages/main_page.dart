import 'package:flutter/material.dart';
import 'package:zombifi_app/generated/l10n.dart';
import 'package:zombifi_app/src/pages/buy_credit_page.dart';
import 'package:zombifi_app/src/pages/chips_page.dart';
import 'package:zombifi_app/src/pages/home_page.dart';
import 'package:zombifi_app/src/pages/profile_page.dart';
import 'package:zombifi_app/src/pages/test_map_page.dart';
import 'package:zombifi_app/utils/colors.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  // Color colorIcon = Colors.black;
  @override
  Widget build(BuildContext context) {
    double _size = 25;
    return Scaffold(
      body: _callPage(_currentIndex),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          // index: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              // colorIcon = colorIcon == colorIcon ? colorGreen : colorIcon;
            });
          },
          selectedItemColor: colorGreen,
          unselectedItemColor: Colors.black,
          unselectedIconTheme: IconThemeData(color: Colors.black),
          selectedIconTheme: IconThemeData(color: colorGreen),
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/house-damage-solid.png",
                height: 22,
                width: 22,
                // color: colorIcon,
              ),
              // ignore: deprecated_member_use
              title: Text(AppLocalizations.of(context).home),
            ),
            BottomNavigationBarItem(
              // icon: Icon(Icons.money_outlined, size: _size),
              icon: Image.asset(
                "assets/map-marked-alt-solid.png",
                height: 22,
                width: 22,
                // color: colorIcon,
              ),
              // ignore: deprecated_member_use
              title: Text(AppLocalizations.of(context).map),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/ticket-alt-solid(1).png",
                height: 22,
                width: 22,
                // color: colorIcon,
              ),
              // ignore: deprecated_member_use
              title: Text(AppLocalizations.of(context).chips),
            ),
            BottomNavigationBarItem(
              // icon: Icon(Icons.money_outlined, size: _size),
              icon: Image.asset(
                "assets/coins-solid.png",
                height: 22,
                width: 22,
                // color: colorIcon,
              ),
              // ignore: deprecated_member_use
              title: Text(AppLocalizations.of(context).credit),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/user-circle-solid.png",
                height: 22,
                width: 22,
                // color: colorIcon,
              ),
              // ignore: deprecated_member_use
              title: Text(AppLocalizations.of(context).profile),
            ),
          ],
        ),
      ),
    );
  }

  Widget _callPage(int currentPage) {
    switch (currentPage) {
      case 0:
        return HomePage();
      case 1:
        return TestMapPage();
      case 2:
        return ChipsPage();
      case 3:
        return BuyCreditPage();
      case 4:
        return ProfilePage();

      default:
        return HomePage();
    }
  }
}
