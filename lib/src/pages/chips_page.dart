import 'package:flutter/material.dart';
import 'package:zombifi_app/generated/l10n.dart';
import 'package:zombifi_app/src/pages/buy_chip_page.dart';
import 'package:zombifi_app/src/pages/home_page.dart';
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
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            final route = MaterialPageRoute(builder: (context) {
              return HomePage();
            });
            Navigator.pop(context, route);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        width: size.width * 1,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 7),
                  child: Text(
                    AppLocalizations.of(context).buyChips,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Container(
                  width: size.width * 1,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: size.width * .9,
                          height: size.height * .84,
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                                child: _cardChips(context),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
                                child: _cardChips1(context),
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
    );
  }

  CardChipsWidget _cardChips(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CardChipsWidget(
      color: colorGreen,
      elevation: 20,
      child: GestureDetector(
        onTap: () {
          final route = MaterialPageRoute(
            builder: (context) {
              return BuyChipPage();
            },
          );
          Navigator.push(context, route);
        },
        child: Container(
          height: size.height * 0.45,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Basic 15',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                ),
                Text(
                  '\$15.00',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      // color: Colors.white,
                      width: size.width * 0.55,
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
    );
  }

  CardChipsWidget _cardChips1(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CardChipsWidget(
      color: Color.fromRGBO(0, 185, 172, 1),
      elevation: 20,
      child: GestureDetector(
        child: Container(
          height: size.height * 0.45,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Plus Double',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                ),
                Text(
                  '\$30.00',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      // color: Colors.white,
                      width: size.width * 0.55,
                      child: Image.asset(
                        "assets/undraw_Social_life.png",
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
    );
  }
}
