import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:zombifi_app/src/pages/main_page.dart';

class UserProvider {
  Future loginUser(
      String userEmail, String password, BuildContext context) async {
    // final authDate = {
    //   'usuario_correo': userEmail,
    //   'password': password,
    // };

    // _userLogin.key = "kossw0c0owcggg088c0k8o4w8o8kowwscg8kwwc8";
    final url = "https://panel.zombiwifi.com/App_controller/autenticacion?" +
        "key=k48wwwwkwwg8gks8cg8gw00cgogo8ws0kk0gswoo" +
        "&usuario_correo=$userEmail&password=$password";
    String message = "Usuario o contraseña incorrecta";
    final resp = await http.get(
      Uri.parse(url),
      headers: {"content-Type": "application/json"},
    );

    // Map bodyUser = jsonDecode(resp.body);
    // var user =
    print("Response body: ${resp.body}");
    if (resp.statusCode == 200) {
      final route = MaterialPageRoute(
        builder: (context) {
          return MainPage();
        },
      );
      Navigator.push(context, route);
    } else {
      throw Exception(message);
    }
  }
}
