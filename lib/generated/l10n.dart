// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class AppLocalizations {
  AppLocalizations();
  
  static AppLocalizations current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      AppLocalizations.current = AppLocalizations();
      
      return AppLocalizations.current;
    });
  } 

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `REGISTRARSE`
  String get signUpUpper {
    return Intl.message(
      'REGISTRARSE',
      name: 'signUpUpper',
      desc: '',
      args: [],
    );
  }

  /// `Registrarse`
  String get signUpLower {
    return Intl.message(
      'Registrarse',
      name: 'signUpLower',
      desc: '',
      args: [],
    );
  }

  /// `INICIAR SESIÓN`
  String get signInUpper {
    return Intl.message(
      'INICIAR SESIÓN',
      name: 'signInUpper',
      desc: '',
      args: [],
    );
  }

  /// `Iniciar Sesión`
  String get signInLower {
    return Intl.message(
      'Iniciar Sesión',
      name: 'signInLower',
      desc: '',
      args: [],
    );
  }

  /// `¿No tienes una cuenta?`
  String get dontAccount {
    return Intl.message(
      '¿No tienes una cuenta?',
      name: 'dontAccount',
      desc: '',
      args: [],
    );
  }

  /// `¿Ya tienes una cuenta?`
  String get haveAccount {
    return Intl.message(
      '¿Ya tienes una cuenta?',
      name: 'haveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Crear Cuenta`
  String get createAccount {
    return Intl.message(
      'Crear Cuenta',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `O registrate con:`
  String get orSignInWith {
    return Intl.message(
      'O registrate con:',
      name: 'orSignInWith',
      desc: '',
      args: [],
    );
  }

  /// `Olvidé mi contraseña`
  String get forgotPassword {
    return Intl.message(
      'Olvidé mi contraseña',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Seleccionar foto`
  String get selectPhoto {
    return Intl.message(
      'Seleccionar foto',
      name: 'selectPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Tomar foto`
  String get takePhoto {
    return Intl.message(
      'Tomar foto',
      name: 'takePhoto',
      desc: '',
      args: [],
    );
  }

  /// `Abrir cámara`
  String get openCamera {
    return Intl.message(
      'Abrir cámara',
      name: 'openCamera',
      desc: '',
      args: [],
    );
  }

  /// `Abrir galería`
  String get openGallery {
    return Intl.message(
      'Abrir galería',
      name: 'openGallery',
      desc: '',
      args: [],
    );
  }

  /// `Nombre(s)`
  String get names {
    return Intl.message(
      'Nombre(s)',
      name: 'names',
      desc: '',
      args: [],
    );
  }

  /// `Primer apellido`
  String get lastName {
    return Intl.message(
      'Primer apellido',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Segundo apellido`
  String get secondLastName {
    return Intl.message(
      'Segundo apellido',
      name: 'secondLastName',
      desc: '',
      args: [],
    );
  }

  /// `Fecha de nacimiento`
  String get dateBirth {
    return Intl.message(
      'Fecha de nacimiento',
      name: 'dateBirth',
      desc: '',
      args: [],
    );
  }

  /// `Código del país`
  String get countryCode {
    return Intl.message(
      'Código del país',
      name: 'countryCode',
      desc: '',
      args: [],
    );
  }

  /// `Número de celular`
  String get phoneNumber {
    return Intl.message(
      'Número de celular',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Correo electrónico`
  String get email {
    return Intl.message(
      'Correo electrónico',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Contraseña`
  String get password {
    return Intl.message(
      'Contraseña',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Confirmar contraseña`
  String get confirmPassword {
    return Intl.message(
      'Confirmar contraseña',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Ubicación`
  String get ubication {
    return Intl.message(
      'Ubicación',
      name: 'ubication',
      desc: '',
      args: [],
    );
  }

  /// `Hola`
  String get hello {
    return Intl.message(
      'Hola',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Mi crédito`
  String get myCredit {
    return Intl.message(
      'Mi crédito',
      name: 'myCredit',
      desc: '',
      args: [],
    );
  }

  /// `Comprar crédito`
  String get buyCredit {
    return Intl.message(
      'Comprar crédito',
      name: 'buyCredit',
      desc: '',
      args: [],
    );
  }

  /// `Recargar`
  String get recharge {
    return Intl.message(
      'Recargar',
      name: 'recharge',
      desc: '',
      args: [],
    );
  }

  /// `Mis compras`
  String get myShopping {
    return Intl.message(
      'Mis compras',
      name: 'myShopping',
      desc: '',
      args: [],
    );
  }

  /// `Estado de ficha actual`
  String get statusChip {
    return Intl.message(
      'Estado de ficha actual',
      name: 'statusChip',
      desc: '',
      args: [],
    );
  }

  /// `Duración`
  String get duration {
    return Intl.message(
      'Duración',
      name: 'duration',
      desc: '',
      args: [],
    );
  }

  /// `Descarga`
  String get download {
    return Intl.message(
      'Descarga',
      name: 'download',
      desc: '',
      args: [],
    );
  }

  /// `Carga`
  String get upload {
    return Intl.message(
      'Carga',
      name: 'upload',
      desc: '',
      args: [],
    );
  }

  /// `Créditos ZombiFi`
  String get zombifiCredits {
    return Intl.message(
      'Créditos ZombiFi',
      name: 'zombifiCredits',
      desc: '',
      args: [],
    );
  }

  /// `Tipo de ficha`
  String get chipType {
    return Intl.message(
      'Tipo de ficha',
      name: 'chipType',
      desc: '',
      args: [],
    );
  }

  /// `Tiempo de actividad`
  String get activityTime {
    return Intl.message(
      'Tiempo de actividad',
      name: 'activityTime',
      desc: '',
      args: [],
    );
  }

  /// `Velocidad de carga`
  String get loadingSpeed {
    return Intl.message(
      'Velocidad de carga',
      name: 'loadingSpeed',
      desc: '',
      args: [],
    );
  }

  /// `Velocidad de descarga`
  String get downloadSpeed {
    return Intl.message(
      'Velocidad de descarga',
      name: 'downloadSpeed',
      desc: '',
      args: [],
    );
  }

  /// `Comprar`
  String get buy {
    return Intl.message(
      'Comprar',
      name: 'buy',
      desc: '',
      args: [],
    );
  }

  /// `Pagar`
  String get pay {
    return Intl.message(
      'Pagar',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `Tiempo restante`
  String get timeRemaining {
    return Intl.message(
      'Tiempo restante',
      name: 'timeRemaining',
      desc: '',
      args: [],
    );
  }

  /// `Descarga restante`
  String get downloadRemaining {
    return Intl.message(
      'Descarga restante',
      name: 'downloadRemaining',
      desc: '',
      args: [],
    );
  }

  /// `Carga restante`
  String get uploadRemaining {
    return Intl.message(
      'Carga restante',
      name: 'uploadRemaining',
      desc: '',
      args: [],
    );
  }

  /// `Explora zonas Zombiwifi`
  String get exploreZones {
    return Intl.message(
      'Explora zonas Zombiwifi',
      name: 'exploreZones',
      desc: '',
      args: [],
    );
  }

  /// `Comprar fichas`
  String get buyChips {
    return Intl.message(
      'Comprar fichas',
      name: 'buyChips',
      desc: '',
      args: [],
    );
  }

  /// `Tipo`
  String get type {
    return Intl.message(
      'Tipo',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `Promociones`
  String get promotions {
    return Intl.message(
      'Promociones',
      name: 'promotions',
      desc: '',
      args: [],
    );
  }

  /// `Nombre`
  String get nameChip {
    return Intl.message(
      'Nombre',
      name: 'nameChip',
      desc: '',
      args: [],
    );
  }

  /// `Dirección IP`
  String get ipAddress {
    return Intl.message(
      'Dirección IP',
      name: 'ipAddress',
      desc: '',
      args: [],
    );
  }

  /// `Tiempo de conexión`
  String get connectionTime {
    return Intl.message(
      'Tiempo de conexión',
      name: 'connectionTime',
      desc: '',
      args: [],
    );
  }

  /// `bytes Carga`
  String get bytesUpload {
    return Intl.message(
      'bytes Carga',
      name: 'bytesUpload',
      desc: '',
      args: [],
    );
  }

  /// `bytes Descarga`
  String get bytesDownload {
    return Intl.message(
      'bytes Descarga',
      name: 'bytesDownload',
      desc: '',
      args: [],
    );
  }

  /// `Pausar`
  String get pause {
    return Intl.message(
      'Pausar',
      name: 'pause',
      desc: '',
      args: [],
    );
  }

  /// `Ficha pausada`
  String get pausedChip {
    return Intl.message(
      'Ficha pausada',
      name: 'pausedChip',
      desc: '',
      args: [],
    );
  }

  /// `Ficha desconectada`
  String get chipDisconnected {
    return Intl.message(
      'Ficha desconectada',
      name: 'chipDisconnected',
      desc: '',
      args: [],
    );
  }

  /// `Reconectar`
  String get reconnect {
    return Intl.message(
      'Reconectar',
      name: 'reconnect',
      desc: '',
      args: [],
    );
  }

  /// `Pagar ficha`
  String get payChip {
    return Intl.message(
      'Pagar ficha',
      name: 'payChip',
      desc: '',
      args: [],
    );
  }

  /// `Método de pago`
  String get paymentMethod {
    return Intl.message(
      'Método de pago',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Tarjeta de crédito`
  String get creditCard {
    return Intl.message(
      'Tarjeta de crédito',
      name: 'creditCard',
      desc: '',
      args: [],
    );
  }

  /// `Efectivo`
  String get cash {
    return Intl.message(
      'Efectivo',
      name: 'cash',
      desc: '',
      args: [],
    );
  }

  /// `Editar`
  String get edit {
    return Intl.message(
      'Editar',
      name: 'edit',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}