import 'package:flutter/material.dart';
import 'package:zombifi_app/generated/l10n.dart';
import 'package:zombifi_app/src/pages/home_page.dart';
import 'package:zombifi_app/src/pages/sign_up_page.dart';
import 'package:zombifi_app/utils/utils.dart';

//Importaciones propias
import 'package:zombifi_app/widgets/button_round.dart';
import 'package:zombifi_app/widgets/text_form_field.dart';

class SignInPage extends StatelessWidget {
  final double _size = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Text(
                    AppLocalizations.of(context).signInLower,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  ),
                  _widgetsSignIn(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //Método que será compuesto por los métodos que serán los que van a componer
  //el body de la vista
  _widgetsSignIn(BuildContext context) => Container(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _textFormFields(context),
              Padding(padding: EdgeInsets.only(top: 10)),
              _buttons(context),
              // _buttons(),
            ],
          ),
        ),
      );

  //Método que instancia los métodos que generan los textforms
  _textFormFields(BuildContext context) => Container(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            _email(context),
            Padding(padding: EdgeInsets.only(top: 18)),
            _password(context),
          ],
        ),
      );
  //TextFormField para el email
  TextFormFieldWidget _email(BuildContext context) {
    return TextFormFieldWidget(
      controller: null,
      keyboardType: TextInputType.emailAddress,
      prefixIcon: Icon(
        Icons.email_outlined,
        color: Colors.black,
        size: _size,
      ),
      hintText: 'ejemplo@correo.com',
      labelText: AppLocalizations.of(context).email,
      obscureText: false,
    );
  }

  //TextFormField para el password
  TextFormFieldWidget _password(BuildContext context) {
    return TextFormFieldWidget(
      controller: null,
      obscureText: true,
      prefixIcon: Icon(
        Icons.lock_outline_rounded,
        color: Colors.black,
        size: _size,
      ),
      suffix: _lostPassword(context),
      labelText: AppLocalizations.of(context).password,
    );
  }

  //Método que instancia los métodos que generan los buttons
  _buttons(BuildContext context) => Container(
        child: Column(
          children: <Widget>[
            // Padding(padding: EdgeInsets.only(top: 10)),
            // // _lostPassword(context),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: colorGradient,
                    tileMode: TileMode.clamp,
                    end: Alignment.topLeft,
                  )),
              child: _signIn(context),
            ),
            Padding(padding: EdgeInsets.only(top: 25)),
            _signUp(context),
            Padding(padding: EdgeInsets.only(top: 50)),
            _orSignIn(context),
          ],
        ),
      );

  //Método que importa el widget personalizado ButtonRound
  Widget _lostPassword(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 20, 10),
            child: Text(
              AppLocalizations.of(context).forgotPassword,
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  //Método que importa el widget personalizado ButtonRound
  ButtonRoundWidget _signIn(BuildContext context) {
    return ButtonRoundWidget(
      child: Text(
        AppLocalizations.of(context).signInUpper,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      elevetion: 1,
      height: 60,
      minWidth: 400,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      onPressed: () {
        final route = MaterialPageRoute(
          builder: (context) {
            return HomePage();
          },
        );
        Navigator.push(context, route);
      },
    );
  }

  Widget _signUp(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          AppLocalizations.of(context).dontAccount,
          style: TextStyle(fontSize: 15),
        ),
        Padding(padding: EdgeInsets.only(left: 10)),
        GestureDetector(
          onTap: () {
            final route = MaterialPageRoute(builder: (context) {
              return SignUpPage();
            });
            Navigator.push(context, route);
          },
          child: Text(
            AppLocalizations.of(context).signUpLower,
            style: TextStyle(
              color: colorGreen,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }

  Widget _orSignIn(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Divider(
            indent: 50,
            endIndent: 50,
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          Text(
            AppLocalizations.of(context).orSignInWith,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          Container(
            height: 50,
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.5,
                    ),
                  ),
                  child: _facebook(context),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.5,
                    ),
                  ),
                  child: _google(context),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  ButtonRoundWidget _facebook(BuildContext context) {
    return ButtonRoundWidget(
      child: Container(
        height: 25,
        width: 25,
        child: Image.asset('assets/facebook.png', fit: BoxFit.contain),
      ),
      height: 40,
      minWidth: 120,
      onPressed: () {
        // final route = MaterialPageRoute(builder: (context) {
        //   return HomePage();
        // });
        // Navigator.push(context, route);
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    );
  }

  ButtonRoundWidget _google(BuildContext context) {
    return ButtonRoundWidget(
      child: Container(
        height: 25,
        width: 25,
        child: Image.asset('assets/google.png', fit: BoxFit.contain),
      ),
      height: 40,
      minWidth: 120,
      onPressed: () {
        // final route = MaterialPageRoute(builder: (context) {
        //   return HomePage();
        // });
        // Navigator.push(context, route);
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    );
  }
}
