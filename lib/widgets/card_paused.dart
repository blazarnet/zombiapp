import 'package:flutter/material.dart';
import 'package:zombifi_app/generated/l10n.dart';
import 'package:zombifi_app/utils/colors.dart';
import 'package:zombifi_app/widgets/button_round.dart';

class CardPausedWidget extends StatefulWidget {
  @override
  _CardPausedWidgetState createState() => _CardPausedWidgetState();
}

class _CardPausedWidgetState extends State<CardPausedWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FlatButton(
      onPressed: null,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
              colors: colorGradientYellow,
              tileMode: TileMode.clamp,
              end: Alignment.topLeft,
            ),
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
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  AppLocalizations.of(context).pausedChip,
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
                              children: <Widget>[
                                Icon(
                                  Icons.warning_rounded,
                                  size: 45,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 25, 8, 8),
                        child: _reconnect(context),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  ButtonRoundWidget _reconnect(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ButtonRoundWidget(
      child: Text(
        AppLocalizations.of(context).reconnect,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      colorButton: colorMustard,
      elevetion: 1,
      height: 50,
      minWidth: size.width * 0.85,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
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
}
