import 'package:flutter/material.dart';

//Importaciones propias
import 'package:zombifi_app/widgets/button_round.dart';
import 'package:zombifi_app/widgets/text_form_field.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: <Widget>[_widgetsLogin()],
        ),
      ),
    );
  }

  _textFormFields() => Container(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            _email(),
            Padding(padding: EdgeInsets.only(top: 18)),
            _password(),
          ],
        ),
      );
  //TextFormField para el email
  TextFormFieldWidget _email() {
    return TextFormFieldWidget(
      controller: null,
      keyboardType: TextInputType.emailAddress,
      icon: Icons.person_outline_rounded,
      hintText: 'ejemplo@correo.com',
      lableText: 'Correo',
      obscureText: false,
    );
  }

  //TextFormField para el password
  TextFormFieldWidget _password() {
    return TextFormFieldWidget(
      controller: null,
      obscureText: true,
      icon: Icons.lock_outline_rounded,
      lableText: 'Contraseña',
    );
  }

  //Método que será compuesto por los métodos que serán los que van a componer
  //el body de la vista
  _widgetsLogin() => Container(
        child: Form(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _textFormFields(),
              Padding(padding: EdgeInsets.only(top: 25)),
              _buttons(),
            ],
          ),
        ),
      );

  //Método que importa el widget personalizado ButtonRound,
  //y se le pasan los parametros que lo van a componer
  //ButtonRoundWidget(descripcion, fontSize, fontWeight, colorText,
  //  colorButton, elevetion, height, minWidth)
  _buttons() => Container(
        child: Column(
          children: <Widget>[
            ButtonRoundWidget('Olvidé mi contraseña', 15, FontWeight.bold,
                Colors.black, Colors.transparent, 0, 60, 350),
            Padding(padding: EdgeInsets.only(top: 13)),
            ButtonRoundWidget('INICIAR SESIÓN', 15, FontWeight.bold,
                Colors.black, Colors.greenAccent, 0, 60, 350),
          ],
        ),
      );
}
