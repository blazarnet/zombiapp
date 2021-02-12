import 'package:flutter/material.dart';

import 'package:zombifi_app/widgets/background.dart';
import 'package:zombifi_app/widgets/profile_photo.dart';
import 'package:zombifi_app/widgets/select_date.dart';
import 'package:zombifi_app/widgets/text_form_field.dart';

import 'package:zombifi_app/generated/l10n.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  List<String> _codes = ['+52', '+48', '-35', '+15'];
  String _codeSelected = '+52';
  File file;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _background(),
          _textFormField(context),
        ],
      ),
    );
  }

  _background() => Stack(
        children: <Widget>[
          _colorBackground(),
          _photoWidget(),
          _buttonsPhoto(),
        ],
      );

  BackgroundWidget _colorBackground() {
    return BackgroundWidget();
  }

  Widget _buttonsPhoto() {
    final size = MediaQuery.of(context).size;
    final double _iconSize = 25;

    return Column(
      children: <Widget>[
        Container(
          height: size.height * 0.32,
          margin: EdgeInsets.all(4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.add_photo_alternate_outlined,
                        size: _iconSize,
                      ),
                      onPressed: () {
                        // _selectPhoto();
                        _processFile(ImageSource.gallery);
                        // print("Clic");
                      }),
                  Text(
                    AppLocalizations.of(context).uploadPhoto,
                    style: TextStyle(fontSize: 18),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.add_a_photo_outlined,
                        size: _iconSize,
                      ),
                      onPressed: () {
                        _processFile(ImageSource.camera);
                      })
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  _processFile(ImageSource source) async {
    // ignore: deprecated_member_use
    file = await ImagePicker.pickImage(source: source);
    if (file != null) {}
    setState(() {});
  }

  ProfilePhotoWidget _photoWidget() {
    return ProfilePhotoWidget();
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
                // _buttonsPhoto(),
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
      lableText: AppLocalizations.of(context).names,
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
      lableText: AppLocalizations.of(context).lastName,
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
      lableText: AppLocalizations.of(context).secondLastName,
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
      lableText: AppLocalizations.of(context).email,
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
      hint: Text(AppLocalizations.of(context).countryCode),
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
      lableText: AppLocalizations.of(context).phoneNumber,
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
      lableText: AppLocalizations.of(context).password,
      obscureText: true,
    );
  }

  TextFormFieldWidget _confirmPassword() {
    return TextFormFieldWidget(
      controller: null,
      enableInteractiveSelection: false,
      // icon: Icons.lock_outline_rounded,
      hintText: '',
      lableText: AppLocalizations.of(context).confirmPassword,
      obscureText: true,
    );
  }
}
