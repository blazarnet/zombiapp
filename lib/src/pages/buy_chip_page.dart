import 'package:flutter/material.dart';
import 'package:zombifi_app/generated/l10n.dart';
import 'package:zombifi_app/src/pages/main_page.dart';
import 'package:zombifi_app/utils/colors.dart';
import 'package:zombifi_app/widgets/button_round.dart';

class BuyChipPage extends StatefulWidget {
  @override
  _BuyChipPageState createState() => _BuyChipPageState();
}

class _BuyChipPageState extends State<BuyChipPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              Container(
                height: size.height * 0.4,
                color: colorGreen,
                child: SafeArea(
                  top: true,
                  left: true,
                  right: true,
                  bottom: true,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {
                                        final route = MaterialPageRoute(
                                          builder: (context) {
                                            return MainPage();
                                          },
                                        );
                                        Navigator.pop(context, route);
                                      },
                                      child: Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                        // size: 25,
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5)),
                                    Text(
                                      "Basic 15",
                                      style: TextStyle(
                                        fontSize: 27,
                                        fontFamily: "gibson",
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            // GestureDetector(
                            //   onTap: () {
                            //     final route = MaterialPageRoute(
                            //       builder: (context) {
                            //         return ChipsPage();
                            //       },
                            //     );
                            //     Navigator.pop(context, route);
                            //   },
                            //   child: Icon(
                            //     Icons.cancel_rounded,
                            //     color: Colors.white,
                            //     size: 30,
                            //   ),
                            // )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              // color: Colors.white,
                              width: size.width * 0.70,
                              height: size.height * 0.23,
                              child: Image.asset(
                                "assets/undraw_Co_workers.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: size.height * 0.58,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text(
                                    "\$15.00",
                                    style: TextStyle(
                                      fontSize: 30,
                                    ),
                                  ),
                                  Text(
                                    AppLocalizations.of(context).zombifiCredits,
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontFamily: "gibson",
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 10)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                AppLocalizations.of(context).loadingSpeed,
                                style: TextStyle(
                                  fontSize: 19,
                                  fontFamily: "gibson",
                                ),
                              ),
                              Text(
                                "1 Mpbs",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontFamily: "gibson",
                                ),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 7)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                AppLocalizations.of(context).downloadSpeed,
                                style: TextStyle(
                                  fontSize: 19,
                                  fontFamily: "gibson",
                                ),
                              ),
                              Text(
                                "2 Mbps",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontFamily: "gibson",
                                ),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 7)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                AppLocalizations.of(context).activityTime,
                                style: TextStyle(
                                  fontSize: 19,
                                  fontFamily: "gibson",
                                ),
                              ),
                              Text(
                                "1 hora",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontFamily: "gibson",
                                ),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(top: 7)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                AppLocalizations.of(context).chipType,
                                style: TextStyle(
                                  fontSize: 19,
                                  fontFamily: "gibson",
                                ),
                              ),
                              Text(
                                "Tiempo",
                                style: TextStyle(
                                  fontSize: 19,
                                  fontFamily: "gibson",
                                ),
                              ),
                            ],
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: size.height * 0.2)),
                          Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: colorGreen,
                                    ),
                                    child: _buyChip(context),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  ButtonRoundWidget _buyChip(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ButtonRoundWidget(
      child: Text(
        AppLocalizations.of(context).buy,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          fontFamily: "gibson",
          color: Colors.white,
        ),
      ),
      elevetion: 1,
      height: 60,
      // minWidth: 300,
      minWidth: size.width * .833,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      onPressed: onPayPressed,
    );
  }

  void onPayPressed() {
    showModalBottomSheet(
      // shape: ShapeBorder(BorderRadius.only()),
      context: context,
      elevation: 0,
      barrierColor: colorBarrier,
      builder: (context) {
        return Container(
          color: colorBarrier,
          height: 300,
          child: Container(
            child: Column(
              children: <Widget>[
                Positioned(top: -50, right: 50, child: _iconCredit()),
                _data(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.5,
                    ),
                  ),
                  child: _payChip(),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).canvasColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _data() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Text(
              "Mi credito ZombiFi",
              style: TextStyle(
                fontSize: 17,
                fontFamily: "gibson",
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 7)),
            Text(
              "\$250.00",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                fontFamily: "gibson",
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 7)),
            Text(
              "Monto a pagar",
              style: TextStyle(
                fontSize: 17,
                fontFamily: "gibson",
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 7)),
            Text(
              "\$15.00",
              style: TextStyle(
                fontSize: 21,
                fontFamily: "gibson",
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _iconCredit() {
    return Container(
      // color: Colors.red,
      height: 60,
      width: 90,
      child: Image.asset('assets/money-check-alt-solid.png'),
    );
  }

  ButtonRoundWidget _payChip() {
    return ButtonRoundWidget(
      child: Text(
        AppLocalizations.of(context).pay,
        style: TextStyle(
          fontFamily: "gibson",
        ),
      ),
      height: 30,
      minWidth: 270,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      onPressed: () {},
    );
  }
}
