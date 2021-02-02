import 'package:flutter/material.dart';
import 'package:zombifi_app/widgets/background.dart';
import 'package:zombifi_app/widgets/select_date.dart';
import 'package:zombifi_app/widgets/text_form_field.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[_background(), _textFormField(context)],
      ),
    );
  }

  _background() => Stack(
        children: <Widget>[_colorBackground()],
      );

  BackgroundWidget _colorBackground() {
    return BackgroundWidget();
  }

  Widget _textFormField(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
              child: Container(
            height: 300.0,
          )),
          Container(
            width: size.width * 0.85,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                _textFormsNameComplete(),
                Padding(padding: EdgeInsets.only(top: 10)),
                _textFormsData(),
              ],
            ),
          )
        ],
      ),
    );
  }

  _textFormsNameComplete() => Container(
        child: Column(
          children: [
            _names(),
            Padding(padding: EdgeInsets.only(top: 10)),
            _lastName(),
            Padding(padding: EdgeInsets.only(top: 10)),
            _secondLastName()
          ],
        ),
      );

  TextFormFieldWidget _names() {
    return TextFormFieldWidget(
      controller: null,
      keyboardType: TextInputType.emailAddress,
      icon: Icons.person_outline_rounded,
      hintText: '',
      lableText: 'Nombre(s)',
      obscureText: false,
    );
  }

  TextFormFieldWidget _lastName() {
    return TextFormFieldWidget(
      controller: null,
      keyboardType: TextInputType.emailAddress,
      // icon: Icons.person_outline_rounded,
      hintText: '',
      lableText: 'Apellido paterno',
      obscureText: false,
    );
  }

  TextFormFieldWidget _secondLastName() {
    return TextFormFieldWidget(
      controller: null,
      keyboardType: TextInputType.emailAddress,
      // icon: Icons.person_outline_rounded,
      hintText: '',
      lableText: 'Apellido materno',
      obscureText: false,
    );
  }

  _textFormsData() => Container(
        child: Column(
          children: [
            _email(),
            Padding(padding: EdgeInsets.only(top: 10)),
            // Row(children: <Widget>[
            //   Column(
            //     children: [
            //       Row(
            //         children: <Widget>[
            //           SizedBox(
            //             width: 10.0,
            //           ),
            //           Expanded(
            //             child: DropdownButton(
            //               value: '',
            //               items: _getCode().toList(),
            //               hint: Text('Código de país'),
            //               onChanged: (newVal) {
            //                 // setState(() {

            //                 // });
            //               },
            //             ),
            //           )
            //         ],
            //       )
            //     ],
            //   ),
            // ]),
            _phoneNumber(),
            Padding(padding: EdgeInsets.only(top: 10)),
            _password(),
            Padding(padding: EdgeInsets.only(top: 10)),
            _confirmPassword(),
            Padding(padding: EdgeInsets.only(top: 10)),
            _dateBirth(),
          ],
        ),
      );

  TextFormFieldWidget _email() {
    return TextFormFieldWidget(
      controller: null,
      keyboardType: TextInputType.emailAddress,
      icon: Icons.email_outlined,
      hintText: 'ejemplo@correo.com',
      lableText: 'Correo',
      obscureText: false,
    );
  }

  TextFormFieldWidget _phoneNumber() {
    return TextFormFieldWidget(
      controller: null,
      keyboardType: TextInputType.phone,
      icon: Icons.phone_iphone_outlined,
      hintText: '',
      lableText: 'Número de celular',
      obscureText: false,
    );
  }

  SelectDateWidget _dateBirth() {
    return SelectDateWidget();
  }

  TextFormFieldWidget _password() {
    return TextFormFieldWidget(
      controller: null,
      icon: Icons.lock_outline_rounded,
      hintText: '',
      lableText: 'Contraseña',
      obscureText: true,
    );
  }

  TextFormFieldWidget _confirmPassword() {
    return TextFormFieldWidget(
      controller: null,
      icon: Icons.lock_outline_rounded,
      hintText: '',
      lableText: 'Contraseña',
      obscureText: true,
    );
  }

  // TextFormFieldWidget _dateBirth() {
  //   return TextFormFieldWidget(
  //     controller: null,
  //     keyboardType: TextInputType.datetime,
  //     icon: Icons.date_range_outlined,
  //     hintText: '',
  //     lableText: 'Fecha de nacimiento',
  //     obscureText: false,
  //   );
  // }

  // List<DropdownMenuItem<String>> _getCode() {
  //   List<DropdownMenuItem<String>> lista = new List();

  //   code.forEach((categoria)  {
  //     lista.add(DropdownMenuItem(
  //       child: Text(code.descripcion),
  //       value: code.id.toString(),
  //     ));
  //   });

  //   return lista;
  // }
}
