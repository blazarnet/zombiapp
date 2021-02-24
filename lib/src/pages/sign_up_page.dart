import 'package:flutter/material.dart';
import 'package:zombifi_app/src/pages/sign_in_page.dart';
import 'package:zombifi_app/utils/colors.dart';
import 'package:zombifi_app/widgets/button_round.dart';

import 'package:zombifi_app/widgets/select_date.dart';
import 'package:zombifi_app/widgets/text_form_field.dart';

import 'package:zombifi_app/generated/l10n.dart';
import 'dart:io';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final double _size = 18;
  List<String> _codes = ['+52', '+48', '-35', '+15'];
  String _codeSelected = '+52';
  File file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 30),
                child: Column(
                  children: <Widget>[
                    // Padding(padding: EdgeInsets.only(top: 30)),
                    Text(
                      AppLocalizations.of(context).createAccount,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        fontFamily: "gibson",
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 15)),
                    _widgetSignUp()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // _background() => Stack(
  //       children: <Widget>[
  //         _colorBackground(),
  //         _photoWidget(),
  //         _buttonsPhoto(),
  //       ],
  //     );

  // BackgroundWidget _colorBackground() {
  //   return BackgroundWidget();
  // }

  // Widget _buttonsPhoto() {
  //   final size = MediaQuery.of(context).size;
  //   final double _iconSize = 25;

  //   return Column(
  //     children: <Widget>[
  //       Container(
  //         height: size.height * 0.32,
  //         margin: EdgeInsets.all(4),
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.end,
  //           children: [
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               crossAxisAlignment: CrossAxisAlignment.end,
  //               children: [
  //                 IconButton(
  //                     icon: Icon(
  //                       Icons.add_photo_alternate_outlined,
  //                       size: _iconSize,
  //                     ),
  //                     onPressed: () {
  //                       // _selectPhoto();
  //                       _processFile(ImageSource.gallery);
  //                       // print("Clic");
  //                     }),
  //                 Text(
  //                   AppLocalizations.of(context).uploadPhoto,
  //                   style: TextStyle(fontSize: 18),
  //                 ),
  //                 IconButton(
  //                     icon: Icon(
  //                       Icons.add_a_photo_outlined,
  //                       size: _iconSize,
  //                     ),
  //                     onPressed: () {
  //                       _processFile(ImageSource.camera);
  //                     })
  //               ],
  //             ),
  //           ],
  //         ),
  //       )
  //     ],
  //   );
  // }

  // _processFile(ImageSource source) async {
  //   // ignore: deprecated_member_use
  //   file = await ImagePicker.pickImage(source: source);
  //   if (file != null) {}
  //   setState(() {});
  // }

  // ProfilePhotoWidget _photoWidget() {
  //   return ProfilePhotoWidget();
  // }

  _widgetSignUp() => Container(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _textFormField(context),
              Padding(padding: EdgeInsets.only(top: 20)),
              _buttons(context),
            ],
          ),
        ),
      );

  Widget _textFormField(BuildContext context) => Container(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            _textFormsNameComplete(),
            _textFormsData(),
          ],
        ),
      );

  _textFormsNameComplete() => Container(
        child: Column(
          children: [
            _names(),
            Padding(padding: EdgeInsets.only(top: 10)),
            // _lastNames(context),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _lastName(),
                  // Padding(padding: EdgeInsets.only(top: 10)),
                  _secondLastName()
                ],
              ),
            ),
          ],
        ),
      );

  TextFormFieldWidget _names() {
    return TextFormFieldWidget(
      // height: 50,
      controller: null,
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.words,
      prefixIcon: Icon(
        Icons.person_outline_outlined,
        color: Colors.black,
        size: _size,
      ),
      hintText: '',
      labelText: AppLocalizations.of(context).names,
      style: TextStyle(
        fontFamily: "gibson",
      ),
      obscureText: false,
    );
  }

  TextFormFieldWidget _lastName() {
    return TextFormFieldWidget(
      // height: 50,
      width: 160,
      controller: null,
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.words,
      // icon: Icons.person_outline_rounded,
      hintText: '',
      labelText: AppLocalizations.of(context).lastName,
      style: TextStyle(
        fontFamily: "gibson",
      ),
      obscureText: false,
    );
  }

  TextFormFieldWidget _secondLastName() {
    return TextFormFieldWidget(
      // height: 50,
      width: 160,

      controller: null,
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.words,
      // icon: Icons.person_outline_rounded,
      hintText: '',
      labelText: AppLocalizations.of(context).secondLastName,
      style: TextStyle(
        fontFamily: "gibson",
      ),

      obscureText: false,
    );
  }

  _textFormsData() => Container(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 10)),
            _dateBirth(),
            Padding(padding: EdgeInsets.only(top: 10)),
            _phoneNumber(),
            // _number(),
            Padding(padding: EdgeInsets.only(top: 25)),
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
      prefixIcon: Icon(
        Icons.email_outlined,
        color: Colors.black,
        size: _size,
      ),
      hintText: 'ejemplo@correo.com',
      labelText: AppLocalizations.of(context).email,
      style: TextStyle(
        fontFamily: "gibson",
      ),
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

  Widget _dropdownCodes() {
    return Container(
      width: 55,
      child: DropdownButton(
        value: _codeSelected,
        items: _getCodes(),
        isDense: true,
        isExpanded: true,
        hint: Text(
          AppLocalizations.of(context).countryCode,
          style: TextStyle(
            fontFamily: "gibson",
          ),
        ),
        onChanged: (opt) {
          setState(() {
            _codeSelected = opt;
          });
        },
      ),
    );
  }

  TextFormFieldWidget _phoneNumber() {
    return TextFormFieldWidget(
      controller: null,
      keyboardType: TextInputType.phone,
      enableInteractiveSelection: false,
      prefix: _dropdownCodes(),
      maxLength: 5,
      prefixIcon: Icon(
        Icons.phone_iphone_outlined,
        color: Colors.black,
        size: _size,
      ),
      hintText: '',
      labelText: AppLocalizations.of(context).phoneNumber,
      style: TextStyle(
        fontFamily: "gibson",
      ),
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
      prefixIcon: Icon(
        Icons.lock_outline_rounded,
        color: Colors.black,
        size: _size,
      ),
      hintText: '',
      labelText: AppLocalizations.of(context).password,
      style: TextStyle(
        fontFamily: "gibson",
      ),
      obscureText: true,
    );
  }

  TextFormFieldWidget _confirmPassword() {
    return TextFormFieldWidget(
      controller: null,
      enableInteractiveSelection: false,
      // icon: Icons.lock_outline_rounded,
      hintText: '',
      labelText: AppLocalizations.of(context).confirmPassword,
      style: TextStyle(
        fontFamily: "gibson",
      ),
      obscureText: true,
    );
  }

  _buttons(BuildContext context) => Container(
        child: Column(
          children: <Widget>[
            _signUp(context),
            Padding(padding: EdgeInsets.only(top: 15)),
            _signIn(context),
          ],
        ),
      );

  ButtonRoundWidget _signUp(BuildContext context) {
    return ButtonRoundWidget(
      child: Text(
        AppLocalizations.of(context).signUpLower,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          fontFamily: "gibson",
          color: Colors.white,
        ),
      ),
      colorButton: colorGreen,
      elevetion: 1,
      height: 60,
      minWidth: 400,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      onPressed: () {
        final route = MaterialPageRoute(
          builder: (context) {
            return SignInPage();
          },
        );
        Navigator.push(context, route);
      },
    );
  }

  Widget _signIn(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          AppLocalizations.of(context).haveAccount,
          style: TextStyle(
            fontSize: 15,
            fontFamily: "gibson",
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 10)),
        GestureDetector(
          onTap: () {
            final route = MaterialPageRoute(builder: (context) {
              return SignInPage();
            });
            Navigator.push(context, route);
          },
          child: Text(
            AppLocalizations.of(context).signInLower,
            style: TextStyle(
              color: colorGreen,
              fontSize: 15,
              fontFamily: "gibson",
            ),
          ),
        ),
      ],
    );
  }
}
