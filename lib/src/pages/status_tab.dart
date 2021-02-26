import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zombifi_app/generated/l10n.dart';
import 'package:zombifi_app/utils/colors.dart';
import 'package:zombifi_app/widgets/button_round.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:zombifi_app/widgets/radial_progress.dart';

class StatusTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double _textSize = 18;
    final double _iconSize = 18;
    final double _indent = 35;

    return Scaffold(
      backgroundColor: bgGreen,
      body: Stack(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                    child: Text(
                      AppLocalizations.of(context).statusOf,
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: "gibson",
                      ),
                      // textAlign: TextAlign.justify,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 0, 10),
                        child: Text(
                          AppLocalizations.of(context).myChip,
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: "gibson",
                          ),
                          // textAlign: TextAlign.justify,
                        ),
                      ),
                      _logo(context),
                    ],
                  )
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: size.width * 1,
                  height: size.height * .75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    color: colorGreen,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SafeArea(
                              child: Container(
                            height: size.height * .04,
                          )),
                          Padding(padding: EdgeInsets.all(7)),
                          Text(
                            "Ficha Basic",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: "gibson",
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 7)),
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [_progressBar(context)],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    _button(
                                      "1hora",
                                      Image.asset(
                                        "assets/clock-solid.png",
                                        color: Colors.grey,
                                        height: 12,
                                        width: 12,
                                      ),
                                      AppLocalizations.of(context).time,
                                    ),
                                    _button(
                                      "1Mbps",
                                      Image.asset(
                                        "assets/arrow-up.png",
                                        color: Colors.grey,
                                        height: 12,
                                        width: 12,
                                      ),
                                      AppLocalizations.of(context).upload,
                                    ),
                                    _button(
                                      "2Mbps",
                                      Image.asset(
                                        "assets/arrow-down.png",
                                        color: Colors.grey,
                                        height: 12,
                                        width: 12,
                                      ),
                                      AppLocalizations.of(context).download,
                                    ),
                                  ],
                                ),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 10)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: <Widget>[
                                        Text(
                                          "${AppLocalizations.of(context).bytesUpload}: ",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: _textSize,
                                            fontFamily: "gibson",
                                          ),
                                        ),
                                        Text(
                                          "${AppLocalizations.of(context).bytesDownload}: ",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: _textSize,
                                            fontFamily: "gibson",
                                          ),
                                        ),
                                        Text(
                                          "${AppLocalizations.of(context).connectionTime}: ",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: _textSize,
                                            fontFamily: "gibson",
                                          ),
                                        ),
                                        Text(
                                          "${AppLocalizations.of(context).ipAddress}: ",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: _textSize,
                                            fontFamily: "gibson",
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          '1499 B',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: _textSize,
                                            fontFamily: "gibson",
                                          ),
                                        ),
                                        Text(
                                          '6.5 KiB',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: _textSize,
                                            fontFamily: "gibson",
                                          ),
                                        ),
                                        Text(
                                          '30m',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: _textSize,
                                            fontFamily: "gibson",
                                          ),
                                        ),
                                        Text(
                                          '192.168.88.123',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: _textSize,
                                            fontFamily: "gibson",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(top: 30)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 20.0),
                                      child: _pause(context),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      Icons.error,
                                      color: Colors.white,
                                      size: 17,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 9),
                                      child: Text(
                                        AppLocalizations.of(context)
                                            .warningPause,
                                        style: TextStyle(
                                          fontSize: 10.8,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(bottom: 15))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _logo(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Image.asset(
      'assets/zombifi_logo_negro.png',
      fit: BoxFit.contain,
      height: size.height * 0.07,
      width: size.width * 0.28,
      alignment: Alignment.topLeft,
    );
  }

  ButtonRoundWidget _button(String data, Image image, String type) {
    return ButtonRoundWidget(
      onPressed: () {},
      colorButton: Colors.white,
      minWidth: 100,
      height: 55,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: <Widget>[
          Text(
            data,
            style: TextStyle(
              fontFamily: "gibson",
              color: colorGreen,
            ),
          ),
          Row(
            children: <Widget>[
              image,
              Padding(padding: EdgeInsets.only(left: 2)),
              Text(
                type,
                style: TextStyle(
                  fontFamily: "gibson",
                  color: Colors.grey,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  ButtonRoundWidget _pause(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ButtonRoundWidget(
      onPressed: () {},
      child: Row(
        children: [
          Icon(
            Icons.pause_circle_filled,
            color: Colors.white,
          ),
          Text(
            " ${AppLocalizations.of(context).pause}",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "gibson",
              fontSize: 18,
            ),
          ),
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35),
      ),
      colorButton: Color.fromRGBO(0, 151, 81, 1),
      elevetion: 1,
      height: 60,
      minWidth: size.width * .8,
    );
  }

  _progressBar(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        width: 300,
        height: 190,
        // color: Colors.white,
        child: CustomPaint(
          painter: _RadialProgress(),
        ),
      ),
      _containerProgress(context)
    ]);
  }

  Widget _containerProgress(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 210,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '00h:30m:15',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      fontFamily: "gibson",
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Text(
                    AppLocalizations.of(context).timeRemaining,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontFamily: "gibson",
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}

class _RadialProgress extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final percentArc = 26;
    final percentArcBG = 50;

    double arc = 2 * pi * (percentArc / 100);
    double arcBG = 2 * pi * (percentArcBG / 100);
    final center = new Offset(size.width * 0.5, size.height * 0.7);
    final radius = min(size.width * 0.5, size.height * 0.6);

    final paintArcBG = new Paint()
      ..strokeWidth = 8
      ..color = Color.fromRGBO(5, 133, 77, 1)
      ..style = PaintingStyle.stroke;

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -109.95,
        arcBG, false, paintArcBG);

    final paintArc = new Paint()
      ..strokeWidth = 10
      ..color = Color.fromRGBO(101, 255, 153, 1)
      ..style = PaintingStyle.stroke;

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -109.95,
        arc, false, paintArc);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
