import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zombifi_app/src/pages/register_page.dart';
import 'package:zombifi_app/src/pages/sign_in_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          primary: true,
          centerTitle: true,
          title: _btnsLog(),
          elevation: 10,
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: _callPages(_currentPage),
            )),
      ),
    );
  }

  Widget _btnsLog() {
    return Row(
      children: _btns(),
    );
  }

  List<Widget> _btns() {
    return [
      SizedBox(
        width: 51.5,
      ),
      MaterialButton(
        onPressed: () {
          setState(() {
            _currentPage = 0;
            _callPages(_currentPage);
          });
        },
        child: Text('INICIAR SESIÓN'),
        color: Colors.grey[300],
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)
      ),
      MaterialButton(
        onPressed: () {
          setState(() {
            _currentPage = 1;
            _callPages(_currentPage);
          });
        },
        child: Text('REGISTRARSE'),
        minWidth: 100,
        color: Colors.grey[300],
      ),
    ];
  }

  Widget _callPages(int pageCurrent) {
    switch (pageCurrent) {
      case 0:
        return SignInPage();
      case 1:
        return RegisterPage();

      default:
        return SignInPage();
    }
  }
}
