import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    // final size = MediaQuery.of(context).size;
    return Scaffold(
      body: _callPage(_currentIndex),
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.white,
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.grey[500],
                spreadRadius: .5,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: BottomNavigationBar(
                elevation: 0,
                backgroundColor: Colors.white,
                // index: _currentIndex,
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
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
                    activeIcon: Image.asset(
                      "assets/house-damage-solid.png",
                      height: 22,
                      width: 22,
                      color: colorGreen,
                    ),
                    icon: Image.asset(
                      "assets/house-damage-solid.png",
                      height: 22,
                      width: 22,
                    ),
                    // ignore: deprecated_member_use
                    title: Text(
                      AppLocalizations.of(context).home,
                      style: TextStyle(
                        fontFamily: "gibson",
                      ),
                    ),
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Image.asset(
                      "assets/map-marked-alt-solid.png",
                      height: 22,
                      width: 22,
                      color: colorGreen,
                    ),
                    icon: Image.asset(
                      "assets/map-marked-alt-solid.png",
                      height: 22,
                      width: 22,
                    ),
                    // ignore: deprecated_member_use
                    title: Text(
                      AppLocalizations.of(context).map,
                      style: TextStyle(
                        fontFamily: "gibson",
                      ),
                    ),
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Image.asset(
                      "assets/ticket-alt-solid.png",
                      height: 22,
                      width: 22,
                      color: colorGreen,
                    ),
                    icon: Image.asset(
                      "assets/ticket-alt-solid.png",
                      height: 22,
                      width: 22,
                    ),
                    // ignore: deprecated_member_use
                    title: Text(
                      AppLocalizations.of(context).chips,
                      style: TextStyle(
                        fontFamily: "gibson",
                      ),
                    ),
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Image.asset(
                      "assets/coins-solid.png",
                      height: 22,
                      width: 22,
                      color: colorGreen,
                    ),
                    icon: Image.asset(
                      "assets/coins-solid.png",
                      height: 22,
                      width: 22,
                    ),
                    // ignore: deprecated_member_use
                    title: Text(
                      AppLocalizations.of(context).credit,
                      style: TextStyle(
                        fontFamily: "gibson",
                      ),
                    ),
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Image.asset(
                      "assets/user-circle-solid.png",
                      height: 22,
                      width: 22,
                      color: colorGreen,
                    ),
                    icon: Image.asset(
                      "assets/user-circle-solid.png",
                      height: 22,
                      width: 22,
                    ),
                    // ignore: deprecated_member_use
                    title: Text(
                      AppLocalizations.of(context).profile,
                      style: TextStyle(
                        fontFamily: "gibson",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
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
