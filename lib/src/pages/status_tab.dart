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
      body: Center(
        child: Container(
          width: size.width * 1,
          height: size.height * 1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            gradient: LinearGradient(
              colors: colorGradientGreen,
              begin: Alignment.topCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SafeArea(
                      child: Container(
                    height: size.height * .04,
                  )),
                  Padding(padding: EdgeInsets.all(7)),
                  Text(
                    AppLocalizations.of(context).statusChip,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.wifi_tethering_rounded,
                                          color: Colors.white,
                                          size: _iconSize,
                                        ),
                                        Text(
                                            "${AppLocalizations.of(context).nameChip}: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: _textSize)),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.watch_later_outlined,
                                          color: Colors.white,
                                          size: _iconSize,
                                        ),
                                        Text(
                                            "${AppLocalizations.of(context).duration}: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: _textSize)),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.arrow_circle_down_outlined,
                                          color: Colors.white,
                                          size: _iconSize,
                                        ),
                                        Text(
                                            "${AppLocalizations.of(context).download}: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: _textSize)),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.arrow_circle_up_outlined,
                                          color: Colors.white,
                                          size: _iconSize,
                                        ),
                                        Text(
                                            "${AppLocalizations.of(context).upload}: ",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: _textSize)),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                // SvgPicture.asset(
                                //   'assets/icons/tag.svg',
                                //   color: Colors.white,
                                // ),

                                Text('Basic 15',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: _textSize)),
                                Text('1h',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: _textSize)),
                                Text('2Mbps',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: _textSize)),
                                Text('1Mbps',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: _textSize))
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Divider(
                            color: Colors.white,
                            indent: _indent,
                            endIndent: _indent,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  "${AppLocalizations.of(context).bytesUpload}: ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: _textSize),
                                ),
                                Text(
                                  "${AppLocalizations.of(context).bytesDownload}: ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: _textSize),
                                ),
                                Text(
                                  "${AppLocalizations.of(context).connectionTime}: ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: _textSize),
                                ),
                                Text(
                                  "${AppLocalizations.of(context).ipAddress}: ",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: _textSize),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '1499 B',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: _textSize,
                                  ),
                                ),
                                Text(
                                  '6.5 KiB',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: _textSize,
                                  ),
                                ),
                                Text(
                                  '30m',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: _textSize,
                                  ),
                                ),
                                Text(
                                  '192.168.88.123',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: _textSize,
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
                              padding: const EdgeInsets.only(bottom: 0.0),
                              child: _pause(context),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  ButtonRoundWidget _pause(BuildContext context) {
    return ButtonRoundWidget(
      onPressed: () {},
      child: Row(
        children: [
          Text(
            "${AppLocalizations.of(context).pause} ",
            style: TextStyle(color: Colors.white),
          ),
          Icon(
            Icons.logout,
            color: Colors.white,
          )
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      colorButton: colorGreen,
      height: 60,
      minWidth: 120,
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
                  Text('30m',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold)),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Text(AppLocalizations.of(context).timeRemaining,
                      style: TextStyle(color: Colors.white, fontSize: 22))
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
