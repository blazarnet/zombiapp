import 'package:flutter/material.dart';
import 'package:zombifi_app/generated/l10n.dart';
import 'package:zombifi_app/src/pages/home_page.dart';

//Importaciones propias
import 'package:zombifi_app/widgets/button_round.dart';
import 'package:zombifi_app/widgets/text_form_field.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[_widgetsLogin(context)],
            ),
          ),
        ),
      ),
    );
  }

  //Método que será compuesto por los métodos que serán los que van a componer
  //el body de la vista
  _widgetsLogin(BuildContext context) => Container(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _textFormFields(context),
              Padding(padding: EdgeInsets.only(top: 15)),
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
      icon: Icons.person_outline_rounded,
      hintText: 'ejemplo@correo.com',
      lableText: AppLocalizations.of(context).email,
      obscureText: false,
    );
  }

  //TextFormField para el password
  TextFormFieldWidget _password(BuildContext context) {
    return TextFormFieldWidget(
      controller: null,
      obscureText: true,
      icon: Icons.lock_outline_rounded,
      lableText: AppLocalizations.of(context).password,
    );
  }

  //Método que instancia los métodos que generan los buttons
  _buttons(BuildContext context) => Container(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 30)),
            _lostPassword(context),
            Padding(padding: EdgeInsets.only(top: 10)),
            _login(context),
          ],
        ),
      );

  //Método que importa el widget personalizado ButtonRound
  FlatButton _lostPassword(BuildContext context) {
    return FlatButton(
      child: Text(
        AppLocalizations.of(context).forgotPassword,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      height: 60,
      minWidth: 400,
      onPressed: () {},
    );
  }

  //Método que importa el widget personalizado ButtonRound
  ButtonRoundWidget _login(BuildContext context) {
    return ButtonRoundWidget(
      child: Text(
        AppLocalizations.of(context).logIn,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      colorButton: Color.fromRGBO(24, 210, 134, 1),
      elevetion: 1,
      height: 60,
      minWidth: 400,
      onPressed: () {
        final route = MaterialPageRoute(builder: (context) {
          return HomePage();
        });
        Navigator.push(context, route);
      },
    );
  }
}
