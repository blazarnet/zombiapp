import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zombifi_app/generated/l10n.dart';
import 'package:zombifi_app/src/pages/status_tab.dart';
import 'package:zombifi_app/utils/colors.dart';

class CardConnectWidget extends StatefulWidget {
  @override
  _CardConnectWidgetState createState() => _CardConnectWidgetState();
}

class _CardConnectWidgetState extends State<CardConnectWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double _textSize1 = 13.8;
    final double _textSize2 = 12;
    return FlatButton(
      onPressed: _onCardPressed,
      child: Card(
        elevation: 15,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Container(
          // elevation: 5,
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
              colors: colorGradientGreen,
              tileMode: TileMode.clamp,
              end: Alignment.topLeft,
            ),
          ),
          child: Column(
            children: <Widget>[
              Container(
                width: size.width * 1,
                child: Padding(
                  padding: EdgeInsets.all(7),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  AppLocalizations.of(context).statusChip,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                                Text("Basic 15",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 75),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.wifi_rounded,
                                  size: 42,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 4),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.watch_later_outlined,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    Text(
                                      "${AppLocalizations.of(context).duration} " +
                                          "1h",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: _textSize1),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 4),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.arrow_circle_down_outlined,
                                        color: Colors.white, size: 15),
                                    Text(
                                      "${AppLocalizations.of(context).download} " +
                                          "2Mbs",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: _textSize1),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 4),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.arrow_circle_up_outlined,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    Text(
                                      "${AppLocalizations.of(context).upload} " +
                                          "1Mbs",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: _textSize1),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              FlatButton(
                                onPressed: () {},
                                padding: EdgeInsets.fromLTRB(3, 5, 3, 5),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: colorGreen,
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "${AppLocalizations.of(context).timeRemaining}",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: _textSize2),
                                    ),
                                    Text(
                                      '--',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              FlatButton(
                                onPressed: () {},
                                padding: EdgeInsets.fromLTRB(3, 5, 3, 5),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: colorGreen,
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "${AppLocalizations.of(context).downloadRemaining}",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: _textSize2),
                                    ),
                                    Text(
                                      '--',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              FlatButton(
                                onPressed: () {},
                                padding: EdgeInsets.fromLTRB(3, 5, 3, 5),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: colorGreen,
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      "${AppLocalizations.of(context).uploadRemaining}",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: _textSize2),
                                    ),
                                    Text(
                                      '--',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.25,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // void _onCardPressed() {
  //   showCupertinoModalPopup(
  //     context: context,
  //     builder: (context) {
  //       return Container(
  //         color: Colors.white,
  //         child: Text("Prueba"),
  //       );
  //     },
  //   );
  // }

  void _onCardPressed() {
    showBottomSheet(
      context: context,
      elevation: 10,
      // backgroundColor: colorBarrier,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      builder: (context) {
        final size = MediaQuery.of(context).size;
        return Container(
          height: size.height * 0.85,
          child: StatusTab(),
        );
      },
    );
  }
}
