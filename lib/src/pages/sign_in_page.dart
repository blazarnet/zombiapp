import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:zombifi_app/generated/l10n.dart';
import 'package:zombifi_app/src/bloc/provider.dart';
import 'package:zombifi_app/src/controllers/login_controller.dart';
import 'package:zombifi_app/src/model/login.dart';
import 'package:zombifi_app/src/pages/main_page.dart';
import 'package:zombifi_app/src/pages/sign_up_page.dart';
import 'package:zombifi_app/src/providers/user_provider.dart';
import 'package:zombifi_app/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

//Importaciones propias
import 'package:zombifi_app/widgets/button_round.dart';
import 'package:zombifi_app/widgets/text_form_field.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController _userEmailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  // final _loginController = new LoginController();
  Login _userLogin = Login();
  final _userProvider = new UserProvider();

  final double _size = 18;

  @override
  Widget build(BuildContext context) {
    // setState(() {
    //   getPreferences();
    // });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Text(
                    AppLocalizations.of(context).signInLower,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      fontFamily: "gibson",
                    ),
                  ),
                  _widgetsSignIn(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _widgetsSignIn(BuildContext context) => Container(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _textFormFields(context),
              Padding(padding: EdgeInsets.only(top: 10)),
              _buttons(context),
              // _buttons(),
            ],
          ),
        ),
      );

  Widget _textFormFields(BuildContext context) {
    final bloc = Provider.of(context);
    return Container(
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.symmetric(vertical: 20)),
          _email(context, bloc),
          Padding(padding: EdgeInsets.only(top: 18)),
          _password(context, bloc),
        ],
      ),
    );
  }

  Widget _email(BuildContext context, LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.emailStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return TextFormFieldWidget(
          controller: _userEmailController,
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
      },
    );
  }

  Widget _password(BuildContext context, LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.passwordStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return TextFormFieldWidget(
          controller: _passwordController,
          keyboardType: TextInputType.text,
          obscureText: true,
          prefixIcon: Icon(
            Icons.lock_outline_rounded,
            color: Colors.black,
            size: _size,
          ),
          // suffix: _lostPassword(context),
          labelText: AppLocalizations.of(context).password,
          style: TextStyle(
            fontFamily: "gibson",
          ),
        );
      },
    );
  }

  Widget _buttons(BuildContext context) {
    final bloc = Provider.of(context);
    return Container(
      child: Column(
        children: <Widget>[
          // Padding(padding: EdgeInsets.only(top: 10)),
          // // _lostPassword(context),
          Padding(padding: EdgeInsets.only(top: 10)),
          _signIn(bloc, context),
          Padding(padding: EdgeInsets.only(top: 25)),
          _signUp(context),
          Padding(padding: EdgeInsets.only(top: 50)),
          _orSignIn(context),
        ],
      ),
    );
  }

  Widget _lostPassword(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 20, 10),
            child: Text(
              AppLocalizations.of(context).forgotPassword,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                fontFamily: "gibson",
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  ButtonRoundWidget _signIn(LoginBloc bloc, BuildContext context) {
    return ButtonRoundWidget(
      child: Text(
        AppLocalizations.of(context).signInUpper,
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
      onPressed: () async {
        loginUser(_userEmailController.text, _passwordController.text, context);
      },
    );
  }

  loginUser(String email, String password, BuildContext context) {
    _userProvider.loginUser(email, password, context);
  }

  Widget _signUp(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          AppLocalizations.of(context).dontAccount,
          style: TextStyle(
            fontSize: 15,
            fontFamily: "gibson",
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 10)),
        GestureDetector(
          onTap: () {
            final route = MaterialPageRoute(builder: (context) {
              return SignUpPage();
            });
            Navigator.push(context, route);
          },
          child: Text(
            AppLocalizations.of(context).signUpLower,
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

  Widget _orSignIn(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Divider(
            indent: 50,
            endIndent: 50,
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          Text(
            AppLocalizations.of(context).orSignInWith,
            style: TextStyle(
              fontSize: 15,
              fontFamily: "gibson",
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          Container(
            height: 50,
            width: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.5,
                    ),
                  ),
                  child: _facebook(context),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.5,
                    ),
                  ),
                  child: _google(context),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  ButtonRoundWidget _facebook(BuildContext context) {
    return ButtonRoundWidget(
      child: Container(
        height: 25,
        width: 25,
        child: Image.asset('assets/facebook.png', fit: BoxFit.contain),
      ),
      height: 40,
      minWidth: 120,
      onPressed: () {
        // final route = MaterialPageRoute(builder: (context) {
        //   return HomePage();
        // });
        // Navigator.push(context, route);
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    );
  }

  ButtonRoundWidget _google(BuildContext context) {
    return ButtonRoundWidget(
      child: Container(
        height: 25,
        width: 25,
        child: Image.asset('assets/google.png', fit: BoxFit.contain),
      ),
      height: 40,
      minWidth: 120,
      onPressed: () {
        // final route = MaterialPageRoute(builder: (context) {
        //   return HomePage();
        // });
        // Navigator.push(context, route);
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    );
  }

  // Future getPreferences() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();

  //   setState(() {
  //     // ignore: unnecessary_statements
  //     _userLogin.user = preferences.get("_userEmail") ?? "null";
  //     _userLogin.password = preferences.get("_password") ?? "null";
  //   });
  // }

  // Future savePreferences() async {
  //   SharedPreferences preferences = await SharedPreferences.getInstance();
  //   preferences.setString("_userEmail", _userEmailController.text);
  //   preferences.setString("_password", _passwordController.text);
  // }
}
