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
      body: Center(
        child: SafeArea(
          top: true,
          bottom: true,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _logo(context),
                Text(
                  'ZombiWifi',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                Text(
                  'La mejor opción',
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _logo(BuildContext context) {
    return Container(
      height: 220,
      width: 220,
      // margin: EdgeInsets.all(30),
      margin: EdgeInsets.fromLTRB(30, 30, 30, 45),
      decoration: BoxDecoration(
        color: Color.fromRGBO(70, 185, 97, 1),
        borderRadius: BorderRadius.circular(70),
      ),
      child: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Image.asset('assets/zombie.png', fit: BoxFit.contain),
      ),
    );
  }
}
