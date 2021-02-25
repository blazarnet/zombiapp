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

  /// `Inicio`
  String get home {
    return Intl.message(
      'Inicio',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Mapa`
  String get map {
    return Intl.message(
      'Mapa',
      name: 'map',
      desc: '',
      args: [],
    );
  }

  /// `Fichas`
  String get chips {
    return Intl.message(
      'Fichas',
      name: 'chips',
      desc: '',
      args: [],
    );
  }

  /// `Crédito`
  String get credit {
    return Intl.message(
      'Crédito',
      name: 'credit',
      desc: '',
      args: [],
    );
  }

  /// `Mi perfil`
  String get profile {
    return Intl.message(
      'Mi perfil',
      name: 'profile',
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

  /// `Escoger el monto de crédito`
  String get chooseCredit {
    return Intl.message(
      'Escoger el monto de crédito',
      name: 'chooseCredit',
      desc: '',
      args: [],
    );
  }

  /// `Siguiente`
  String get next {
    return Intl.message(
      'Siguiente',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Por favor, ingrese los datos de su tarjeta bancaria y proceda  con la finalización del pago del crédito seleccionado.`
  String get warningCreditCard {
    return Intl.message(
      'Por favor, ingrese los datos de su tarjeta bancaria y proceda  con la finalización del pago del crédito seleccionado.',
      name: 'warningCreditCard',
      desc: '',
      args: [],
    );
  }

  /// `Pago con tarjeta`
  String get cardPayment {
    return Intl.message(
      'Pago con tarjeta',
      name: 'cardPayment',
      desc: '',
      args: [],
    );
  }

  /// `Nombre`
  String get cardName {
    return Intl.message(
      'Nombre',
      name: 'cardName',
      desc: '',
      args: [],
    );
  }

  /// `Número de tarjeta`
  String get cardNumber {
    return Intl.message(
      'Número de tarjeta',
      name: 'cardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Fecha de expiración`
  String get expirationDate {
    return Intl.message(
      'Fecha de expiración',
      name: 'expirationDate',
      desc: '',
      args: [],
    );
  }

  /// `Mes`
  String get month {
    return Intl.message(
      'Mes',
      name: 'month',
      desc: '',
      args: [],
    );
  }

  /// `Año`
  String get year {
    return Intl.message(
      'Año',
      name: 'year',
      desc: '',
      args: [],
    );
  }

  /// `Código de seguridad`
  String get securityCode {
    return Intl.message(
      'Código de seguridad',
      name: 'securityCode',
      desc: '',
      args: [],
    );
  }

  /// `Finalizar pago`
  String get finalizePayment {
    return Intl.message(
      'Finalizar pago',
      name: 'finalizePayment',
      desc: '',
      args: [],
    );
  }

  /// `Pago realizado por el monto de`
  String get titleTicket {
    return Intl.message(
      'Pago realizado por el monto de',
      name: 'titleTicket',
      desc: '',
      args: [],
    );
  }

  /// `Créditos ZMBI`
  String get zmbiCredit {
    return Intl.message(
      'Créditos ZMBI',
      name: 'zmbiCredit',
      desc: '',
      args: [],
    );
  }

  /// `Concepto`
  String get concept {
    return Intl.message(
      'Concepto',
      name: 'concept',
      desc: '',
      args: [],
    );
  }

  /// `Folio de compra`
  String get purchaseFolio {
    return Intl.message(
      'Folio de compra',
      name: 'purchaseFolio',
      desc: '',
      args: [],
    );
  }

  /// `Servicio`
  String get service {
    return Intl.message(
      'Servicio',
      name: 'service',
      desc: '',
      args: [],
    );
  }

  /// `Fecha`
  String get date {
    return Intl.message(
      'Fecha',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `Ir al menú principal`
  String get goMenu {
    return Intl.message(
      'Ir al menú principal',
      name: 'goMenu',
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

  /// `Mi ficha activa`
  String get statusChip {
    return Intl.message(
      'Mi ficha activa',
      name: 'statusChip',
      desc: '',
      args: [],
    );
  }

  /// `Tiempo`
  String get time {
    return Intl.message(
      'Tiempo',
      name: 'time',
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

  /// `Explora zonas infectadas`
  String get exploreZones {
    return Intl.message(
      'Explora zonas infectadas',
      name: 'exploreZones',
      desc: '',
      args: [],
    );
  }

  /// `Zonas infectadas`
  String get infectedZones {
    return Intl.message(
      'Zonas infectadas',
      name: 'infectedZones',
      desc: '',
      args: [],
    );
  }

  /// `Comprar ficha`
  String get buyChip {
    return Intl.message(
      'Comprar ficha',
      name: 'buyChip',
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

  /// `Pausar mi tiempo`
  String get pause {
    return Intl.message(
      'Pausar mi tiempo',
      name: 'pause',
      desc: '',
      args: [],
    );
  }

  /// `El usuario tiene la posibilidad pausar el tiempo de uso de una ficha comprada, esta acción solo se permite una vez por ficha.`
  String get warningPause {
    return Intl.message(
      'El usuario tiene la posibilidad pausar el tiempo de uso de una ficha comprada, esta acción solo se permite una vez por ficha.',
      name: 'warningPause',
      desc: '',
      args: [],
    );
  }

  /// `Ofrece la conexión suficientemente rápida para compartir y comunicarte con tus amigos y seres queridos, disfruta de la conectividad que ZombiFi te ofrece con la duración de 1 hora.`
  String get warningChip {
    return Intl.message(
      'Ofrece la conexión suficientemente rápida para compartir y comunicarte con tus amigos y seres queridos, disfruta de la conectividad que ZombiFi te ofrece con la duración de 1 hora.',
      name: 'warningChip',
      desc: '',
      args: [],
    );
  }

  /// `Confirmar orden de compra`
  String get confirmOrder {
    return Intl.message(
      'Confirmar orden de compra',
      name: 'confirmOrder',
      desc: '',
      args: [],
    );
  }

  /// `Por favor, ingrese los datos de su tarjeta bancaria y proceda  con la finalización del pago del crédito seleccionado.`
  String get warningOrder {
    return Intl.message(
      'Por favor, ingrese los datos de su tarjeta bancaria y proceda  con la finalización del pago del crédito seleccionado.',
      name: 'warningOrder',
      desc: '',
      args: [],
    );
  }

  /// `Crédito a pagar`
  String get creditToPay {
    return Intl.message(
      'Crédito a pagar',
      name: 'creditToPay',
      desc: '',
      args: [],
    );
  }

  /// `El costo de la ficha será cobrada desde la cartera de créditos ZombiFi.`
  String get warningCost {
    return Intl.message(
      'El costo de la ficha será cobrada desde la cartera de créditos ZombiFi.',
      name: 'warningCost',
      desc: '',
      args: [],
    );
  }

  /// `Pagos seguros y protegidos`
  String get paymentSecure {
    return Intl.message(
      'Pagos seguros y protegidos',
      name: 'paymentSecure',
      desc: '',
      args: [],
    );
  }

  /// `Confirmar pago`
  String get confirmPayment {
    return Intl.message(
      'Confirmar pago',
      name: 'confirmPayment',
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

  /// `Conectarse a Zona Wifi`
  String get connectWifi {
    return Intl.message(
      'Conectarse a Zona Wifi',
      name: 'connectWifi',
      desc: '',
      args: [],
    );
  }

  /// `Cambiar`
  String get change {
    return Intl.message(
      'Cambiar',
      name: 'change',
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