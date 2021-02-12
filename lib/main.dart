import 'package:flutter/material.dart';

//Mis importaciones
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:zombifi_app/generated/l10n.dart';
import 'package:zombifi_app/src/pages/splash_screen.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:zombifi_app/src/pages/login_page.dart';

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
        AppLocalizations.delegate
      ],
      supportedLocales: AppLocalizations.delegate.supportedLocales,
      home: SplashScreen(),
    );
  }
}
