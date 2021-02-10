import 'package:flutter/material.dart';
import 'package:zombifi_app/generated/l10n.dart';
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
    final size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          primary: true,
          // centerTitle: true,
          title: _btnsLog(),
          elevation: 10,
        ),
        body: Container(
            width: double.infinity, //ancho: toda la pantalla
            height: size.height * 1.0, //largo: 100% de la pantalla
            child: Padding(
              padding: EdgeInsets.only(bottom: 25),
              // padding: EdgeInsets.all(25),
              child: _callPages(_currentPage),
            )),
      ),
    );
  }

  //
  Widget _btnsLog() {
    return Padding(
      padding: EdgeInsets.all(2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _btns(),
      ),
    );
  }

  //Método que crea los botones situados en el appBar
  List<Widget> _btns() {
    return [
      // SizedBox(
      //   width: 50,
      // ),
      FlatButton(
        onPressed: () {
          setState(() {
            _currentPage = 0;
            _callPages(_currentPage);
          });
        },
        child: Text(AppLocalizations.of(context).logIn),
        minWidth: 180,
        color: Colors.grey[300],
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero)
      ),
      FlatButton(
        onPressed: () {
          setState(() {
            _currentPage = 1;
            _callPages(_currentPage);
          });
        },
        child: Text(AppLocalizations.of(context).sigIn),
        minWidth: 180,
        color: Colors.grey[300],
      ),
    ];
  }

  //Método que llama a la página sobre el home_page
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
