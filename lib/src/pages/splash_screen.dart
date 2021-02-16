import 'package:flutter/material.dart';
import 'package:zombifi_app/src/pages/animation_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(milliseconds: 3200),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => AnimationPage(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _splashScren(),
          Positioned(top: -30.0, right: -40.0, child: _circle1()),
          Positioned(top: 60.0, right: 60.0, child: _circle2()),
          Positioned(top: 105.0, right: 35.0, child: _circle3()),
          Positioned(top: 210.0, left: 35.0, child: _circle4()),
          Positioned(bottom: -110.0, left: -90.0, child: _circle5()),
        ],
      ),
    );
  }

  Widget _splashScren() {
    return Center(
      child: Stack(
        children: <Widget>[
          SafeArea(
            top: true,
            bottom: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _character(context),
                _logo(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _character(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 300,
      width: 350,
      margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: Image.asset(
        'assets/zombifi_personaje_color.png',
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _logo(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: 110,
      width: 300,
      margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: Image.asset(
        'assets/zombifi_logo_color.png',
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _circle1() {
    return Container(
      width: 115.0,
      height: 115.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Color.fromRGBO(72, 189, 150, 1),
      ),
    );
  }

  Widget _circle2() {
    return Container(
      width: 85.0,
      height: 85.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Color.fromRGBO(70, 185, 97, 1),
      ),
    );
  }

  Widget _circle3() {
    return Container(
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Color.fromRGBO(70, 185, 97, 0.8),
      ),
    );
  }

  Widget _circle4() {
    return Container(
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Color.fromRGBO(70, 185, 97, 0.4),
      ),
    );
  }

  Widget _circle5() {
    return Container(
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Color.fromRGBO(90, 180, 45, 1),
      ),
    );
  }
}
