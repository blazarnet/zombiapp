import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

//Mis importaciones
import 'package:zombifi_app/src/pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Zombifi App',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', 'US'), //English
          const Locale('es', 'ES'), //Spanish
        ],
        home: LoginPage());
  }
}
