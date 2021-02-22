import 'dart:io';

import 'package:flutter/material.dart';

class ProfilePhotoWidget extends StatefulWidget {
  final File photo;
  const ProfilePhotoWidget({this.photo});

  @override
  _ProfilePhotoWidgetState createState() => _ProfilePhotoWidgetState();
}

class _ProfilePhotoWidgetState extends State<ProfilePhotoWidget> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 75,
      child: ClipOval(
        child: SizedBox(
          width: 195.0,
          height: 195.0,
          child: (widget.photo != null)
              ? Image.file(
                  widget.photo,
                  fit: BoxFit.fill,
                  // ):(_persona.fotoUrl!=null)?Image.network(
                  //   _persona.fotoUrl,
                  //   fit: BoxFit.fill,
                )
              : Image.asset(
                  'assets/man.png',
                  fit: BoxFit.contain,
                ),
        ),
      ),
    );
  }

  // Widget build(BuildContext context) {
  //   final size = MediaQuery.of(context).size;
  //   return Container(
  //     margin: EdgeInsets.all(8),
  //     height:
  //         (widget.photo != null) ? size.height * 0.300 : size.height * 0.290,
  //     width: double.infinity,
  //     child: (widget.photo != null)
  //         ? Image.file(widget.photo, fit: BoxFit.contain)
  //         : Image.asset('assets/man.png', fit: BoxFit.contain),
  //   );
  // }
}
