import 'package:flutter/material.dart';
import 'package:zombifi_app/widgets/background.dart';
import 'package:zombifi_app/widgets/select_date.dart';
import 'package:zombifi_app/widgets/text_form_field.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  List<String> _codes = ['+52', '+48', '-35', '+15'];
  String _codeSelected = '+52';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[_background(), _textFormField(context)],
      ),
    );
  }

  _background() => Stack(
        children: <Widget>[_colorBackground(), _buttonsPhoto()],
      );

  BackgroundWidget _colorBackground() {
    return BackgroundWidget();
  }

  Widget _buttonsPhoto() {
    final size = MediaQuery.of(context).size;
    final double _iconSize = 25;

    return Stack(
      children: <Widget>[
        Container(
          height: size.height * 0.345,
          margin: EdgeInsets.all(4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.add_photo_alternate_outlined,
                        size: _iconSize,
                      ),
                      onPressed: () {}),
                  Text(
                    'Cargar foto',
                    style: TextStyle(fontSize: 18),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.add_a_photo_outlined,
                        size: _iconSize,
                      ),
                      onPressed: () {})
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _textFormField(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
              child: Container(
            height: size.height * 0.37,
          )),
          Container(
            width: size.width * .95,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Padding(padding: EdgeInsets.only(top: 5)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 17),
                  child: _textFormsNameComplete(),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 17),
                    child: _textFormsData()),
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
            // _lastNames(context),
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
      textCapitalization: TextCapitalization.words,
      icon: Icons.person_outline_rounded,
      hintText: '',
      lableText: 'Nombre(s)',
      obscureText: false,
    );
  }

  // Widget _lastNames(BuildContext context) {
  //   final size = MediaQuery.of(context).size;
  //   return Container(
  //     width: size.width * 0.95,
  //     height: size.height * 0.25,
  //     color: Colors.red,
  //     child: Column(
  //       // mainAxisAlignment: MainAxisAlignment.center,
  //       children: <Widget>[
  //         Container(
  //           width: size.width * 1,
  //           child: Padding(
  //             padding: const EdgeInsets.all(8.0),
  //             child: Column(
  //               children: [
  //                 Row(
  //                   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                   children: <Widget>[
  //                     Padding(
  //                       padding: const EdgeInsets.symmetric(
  //                           horizontal: 0, vertical: 4),
  //                       child: Column(
  //                         children: <Widget>[
  //                           _lastName(),
  //                         ],
  //                       ),
  //                     ),
  //                     Padding(
  //                       padding: const EdgeInsets.symmetric(
  //                           horizontal: 0, vertical: 4),
  //                       child: Column(
  //                         children: <Widget>[_secondLastName()],
  //                       ),
  //                     )
  //                   ],
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //         // _lastName(),
  //         // Padding(padding: EdgeInsets.only(top: 5)),
  //         // _secondLastName()
  //       ],
  //     ),
  //   );
  // }

  TextFormFieldWidget _lastName() {
    return TextFormFieldWidget(
      controller: null,
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.words,
      // icon: Icons.person_outline_rounded,
      hintText: '',
      lableText: 'Paterno',
      obscureText: false,
    );
  }

  TextFormFieldWidget _secondLastName() {
    return TextFormFieldWidget(
      controller: null,
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.words,
      // icon: Icons.person_outline_rounded,
      hintText: '',
      lableText: 'Materno',
      obscureText: false,
    );
  }

  _textFormsData() => Container(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 10)),
            _dateBirth(),
            Padding(padding: EdgeInsets.only(top: 10)),
            // Row(
            //   children: <Widget>[
            //     Column(
            //       children: <Widget>[
            //         Expanded(
            //           child: _dropdownCodes(),
            //         ),
            //         _phoneNumber(),
            //       ],
            //     )
            //   ],
            // ),
            _dropdownCodes(),
            Padding(padding: EdgeInsets.only(top: 10)),
            _phoneNumber(),
            // _number(),
            Padding(padding: EdgeInsets.only(top: 10)),
            _email(),
            Padding(padding: EdgeInsets.only(top: 10)),
            _password(),
            Padding(padding: EdgeInsets.only(top: 10)),
            _confirmPassword(),
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

  List<DropdownMenuItem<String>> _getCodes() {
    List<DropdownMenuItem<String>> list = new List();
    _codes.forEach((code) {
      list.add(DropdownMenuItem(
        child: Text(code),
        value: code,
      ));
    });

    return list;
  }

  // _number() => Container(
  //       child: Row(
  //         children: <Widget>[
  //           Column(
  //             children: <Widget>[_dropdownCodes()],
  //           ),
  //           Column(
  //             children: <Widget>[_phoneNumber()],
  //           )
  //         ],
  //       ),
  //     );

  Widget _dropdownCodes() {
    return DropdownButton(
      value: _codeSelected,
      items: _getCodes(),
      hint: Text('Código del país'),
      onChanged: (opt) {
        setState(() {
          _codeSelected = opt;
        });
      },
    );
  }

  TextFormFieldWidget _phoneNumber() {
    return TextFormFieldWidget(
      controller: null,
      keyboardType: TextInputType.phone,
      enableInteractiveSelection: false,
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
      enableInteractiveSelection: false,
      icon: Icons.lock_outline_rounded,
      hintText: '',
      lableText: 'Contraseña',
      obscureText: true,
    );
  }

  TextFormFieldWidget _confirmPassword() {
    return TextFormFieldWidget(
      controller: null,
      enableInteractiveSelection: false,
      // icon: Icons.lock_outline_rounded,
      hintText: '',
      lableText: 'Confirmar contraseña',
      obscureText: true,
    );
  }
}
