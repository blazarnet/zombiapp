import 'package:flutter/material.dart';
import 'package:zombifi_app/generated/l10n.dart';
import 'package:zombifi_app/src/pages/buy_chip_page.dart';
import 'package:zombifi_app/utils/colors.dart';
import 'package:zombifi_app/widgets/card_chips.dart';

class ChipsPage extends StatefulWidget {
  @override
  _ChipsPageState createState() => _ChipsPageState();
}

class _ChipsPageState extends State<ChipsPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgGreen,
      body: SafeArea(
        minimum: EdgeInsets.only(top: 50),
        child: Container(
          width: size.width * 1,
          color: bgGreen,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 0),
                    child: Text(
                      AppLocalizations.of(context).chips,
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: "gibson",
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 1,
                    color: bgGreen,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: size.width * .9,
                            height: size.height * .837,
                            child: ListView(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(8, 0, 8, 10),
                                  child: _cardChipsWidget(context),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(8, 0, 8, 10),
                                  child: _cardChipsWidget(context),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _cardChipsWidget(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .4,
      height: size.height * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        // color: Colors.red,
      ),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          Image.asset(
            "assets/card_chip.png",
            height: size.height * 1,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 45, 40, 25),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Basic",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: "gibson",
                      ),
                    ),
                    Text(
                      "15.00",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontFamily: "gibson",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
        // width: size.width * 1,
      ),
    );
  }
}
