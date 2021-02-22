import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:zombifi_app/generated/l10n.dart';
import 'package:zombifi_app/src/pages/home_page.dart';
import 'package:zombifi_app/utils/colors.dart';
import 'package:zombifi_app/widgets/button_round.dart';
import 'package:zombifi_app/widgets/profile_photo.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File photo;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // body: nested(),
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: () {
        //     final route = MaterialPageRoute(
        //       builder: (context) {
        //         return HomePage();
        //       },
        //     );
        //     Navigator.pop(context, route);
        //   },
        //   icon: Icon(
        //     Icons.arrow_back,
        //     color: Colors.black,
        //   ),
        // ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        width: size.width * 1,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 7),
                          child: Text(
                            "Alan",
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 7),
                          child: Text(
                            "Moreno Martinez",
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 7.0),
                          child: Text(
                            "Izamal-Yucatán",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: _onPressedPhoto,
                      child: _photoWidget(),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: _data(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ProfilePhotoWidget _photoWidget() {
    return ProfilePhotoWidget(
      photo: photo,
    );
  }

  ButtonRoundWidget _edit() {
    return ButtonRoundWidget(
      child: Text(
        AppLocalizations.of(context).edit,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      onPressed: () {},
      colorButton: Colors.grey,
      height: 45,
      minWidth: 100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }

  Widget _data(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.7,
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 15)),
          _cel(),
          Padding(padding: EdgeInsets.only(top: 15)),
          _email(),
          Padding(padding: EdgeInsets.only(top: 15)),
          _password(),
          Padding(padding: EdgeInsets.only(top: 15)),
          _ubication(),
        ],
      ),
    );
  }

  ButtonRoundWidget _cel() {
    return ButtonRoundWidget(
      onPressed: () {},
      elevetion: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      height: 55,
      colorButton: Color.fromRGBO(235, 235, 235, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.phone_iphone_outlined,
                  ),
                  Text(AppLocalizations.of(context).phoneNumber)
                ],
              )
            ],
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }

  ButtonRoundWidget _email() {
    return ButtonRoundWidget(
      onPressed: () {},
      elevetion: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      height: 55,
      colorButton: Color.fromRGBO(235, 235, 235, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                  ),
                  Text(AppLocalizations.of(context).email)
                ],
              )
            ],
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }

  ButtonRoundWidget _password() {
    return ButtonRoundWidget(
      onPressed: () {},
      elevetion: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      height: 55,
      colorButton: Color.fromRGBO(235, 235, 235, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.lock,
                  ),
                  Text(AppLocalizations.of(context).password)
                ],
              )
            ],
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }

  ButtonRoundWidget _ubication() {
    return ButtonRoundWidget(
      onPressed: () {},
      elevetion: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      height: 55,
      colorButton: Color.fromRGBO(235, 235, 235, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  // Icon(
                  //     // Icons,
                  //     ),
                  Text(AppLocalizations.of(context).ubication)
                ],
              )
            ],
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }

  void _onPressedPhoto() {
    showModalBottomSheet(
      context: context,
      elevation: 0,
      barrierColor: colorBarrier,
      builder: (context) {
        return Container(
          color: colorBarrier,
          height: 170,
          child: Container(
            child: _buttons(),
            decoration: BoxDecoration(
              color: Theme.of(context).canvasColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buttons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          ListTile(
            trailing: Icon(Icons.add_a_photo),
            title: Text(AppLocalizations.of(context).takePhoto),
            subtitle: Text(AppLocalizations.of(context).openCamera),
            onTap: _takePhoto,
          ),
          Divider(),
          ListTile(
            trailing: Icon(Icons.add_photo_alternate),
            title: Text(AppLocalizations.of(context).selectPhoto),
            subtitle: Text(AppLocalizations.of(context).openGallery),
            onTap: _selectPhoto,
          ),
        ],
      ),
    );
  }

  _selectPhoto() async {
    _processImage(ImageSource.gallery);
  }

  _takePhoto() async {
    _processImage(ImageSource.camera);
  }

  _processImage(ImageSource origen) async {
    // ignore: deprecated_member_use
    photo = await ImagePicker.pickImage(source: origen);

    if (photo != null) {
      //Limpieza

    }
    setState(() {});
  }
}
