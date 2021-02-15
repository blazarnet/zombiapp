import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';
import 'package:zombifi_app/src/pages/sign_in_page.dart';

class AnimationPage extends StatefulWidget {
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  int _counter = 10;
  Timer _timer;

  /// Tracks if the animation is playing by whether controller is running.
  bool get isPlaying => _controller?.isActive ?? false;

  Artboard _riveArtboard;
  RiveAnimationController _controller;
  @override
  void initState() {
    super.initState();

    // Load the animation file from the bundle, note that you could also
    // download this. The RiveFile just expects a list of bytes.
    rootBundle.load('assets/buggy.riv').then(
      (data) async {
        final file = RiveFile();

        // Load the RiveFile from the binary data.
        if (file.import(data)) {
          // The artboard is the root of the animation and gets drawn in the
          // Rive widget.
          final artboard = file.mainArtboard;
          // Add a controller to play back a known animation on the main/default
          // artboard.We store a reference to it so we can toggle playback.
          artboard.addController(_controller = SimpleAnimation('idle'));
          setState(() {
            _riveArtboard = artboard;
            _startTimer();
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: _riveArtboard != null
              ? Rive(artboard: _riveArtboard)
              : const SizedBox()),
    );
  }

  //Método timer para validar el tiempo en pantalla de la animación
  //y luego dirigir al login llegando el timer 0
  _startTimer() async {
    _counter = 10;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter > 0) {
          _counter--;
        } else {
          _timer.cancel();
          if (_counter == 0) {
            final route = MaterialPageRoute(builder: (context) {
              return SignInPage();
            });
            Navigator.pushReplacement(context, route);
            _riveArtboard.remove();
          }
        }
      });
    });
  }
}
