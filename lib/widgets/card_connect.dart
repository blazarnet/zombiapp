import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zombifi_app/generated/l10n.dart';
import 'package:zombifi_app/src/pages/status_tab.dart';
import 'package:zombifi_app/utils/colors.dart';
import 'package:zombifi_app/widgets/button_round.dart';

class CardConnectWidget extends StatefulWidget {
  @override
  _CardConnectWidgetState createState() => _CardConnectWidgetState();
}

class _CardConnectWidgetState extends State<CardConnectWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FlatButton(
      onPressed: _onCardPressed,
      child: Card(
        elevation: 15,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
        child: Container(
          // elevation: 5,
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: colorGreen,
          ),
          child: Column(
            children: <Widget>[
              Container(
                width: size.width * 1,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  AppLocalizations.of(context).statusChip,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: "gibson",
                                  ),
                                ),
                                Text(
                                  "Ficha Basic",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "gibson",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 125),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.wifi_rounded,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 3),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.watch_later_outlined,
                              color: Colors.white,
                              size: 15,
                            ),
                            Text(
                              "${AppLocalizations.of(context).timeRemaining}: ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "gibson",
                              ),
                            ),
                            Text(
                              "00h:43m:33s",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: "gibson",
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 25, 8, 8),
                        child: _pauseTime(context),
                      ),
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

  ButtonRoundWidget _pauseTime(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ButtonRoundWidget(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.pause_circle_filled_outlined,
            color: Colors.white,
          ),
          Padding(padding: EdgeInsets.only(left: 5)),
          Text(
            AppLocalizations.of(context).pause,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: "gibson",
              color: Colors.white,
            ),
          ),
        ],
      ),
      colorButton: Color.fromRGBO(0, 151, 81, 1),
      elevetion: 1,
      height: 55,
      minWidth: size.width * 0.82,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      onPressed: () {
        // final route = MaterialPageRoute(
        //   builder: (context) {
        //     return HomePage();
        //   },
        // );
        // Navigator.push(context, route);
      },
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
    showCupertinoModalPopup(
      context: context,
      // elevation: 10,
      // // backgroundColor: colorBarrier,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.only(
      //     topLeft: Radius.circular(25),
      //     topRight: Radius.circular(25),
      //   ),
      // ),
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
