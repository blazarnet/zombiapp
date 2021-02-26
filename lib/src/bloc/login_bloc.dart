import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:zombifi_app/src/bloc/validators.dart';

class LoginBloc with Validators {
  final _userEmailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  //Receive data stream
  Stream<String> get emailStream =>
      _userEmailController.stream.transform(validateEmail);
  Stream<String> get passwordStream =>
      _passwordController.stream.transform(validatePassword);

  //Insert values in stream
  Function(String) get changeEmail => _userEmailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  String get email => _userEmailController.value;
  String get pass => _passwordController.value;

  dispose() {
    _userEmailController?.close();
    _passwordController?.close();
  }
}
