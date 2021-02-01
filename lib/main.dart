import 'package:flutter/material.dart';
//Mis importaciones
import 'package:zombifi_app/src/pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Zombifi App',
        debugShowCheckedModeBanner: false,
        home: LoginPage());
  }
}
