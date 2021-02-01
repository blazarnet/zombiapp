import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: TextFormField(
                autocorrect: true,
                keyboardType: TextInputType.emailAddress,
                controller: null,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: 'Correo electrónico',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  hintText: 'zombifi@app.com',
                  // border: ,
                  // icon: Icon(Icons.person_outline_rounded)
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: TextFormField(
                obscureText: true,
                controller: null,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  hintText: '*****',
                  // border: ,
                  // icon: Icon(Icons.lock_outline_rounded)
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40),
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  'Olvide mi contraseña',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                color: Colors.transparent,
                elevation: 0,
                minWidth: 400,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  'CONTINUAR',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                color: Colors.greenAccent,
                elevation: 0,
                minWidth: 400,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ],
        ),
      ),
      // child: Center(
      //   child: Text('Inicio de sesión'),
      // ),
    );
  }
}
