import 'package:flutter/material.dart';
import 'package:zombifi_app/generated/l10n.dart';
import 'package:zombifi_app/src/pages/home_page.dart';
import 'package:zombifi_app/utils/colors.dart';
import 'package:zombifi_app/widgets/card_chips.dart';

class BuyChipsPage extends StatefulWidget {
  @override
  _BuyChipsPageState createState() => _BuyChipsPageState();
}

class _BuyChipsPageState extends State<BuyChipsPage> {
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
                                padding: const EdgeInsets.all(8.0),
                                child: _cardChips(context),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
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
        child: Container(
          height: size.height * 0.40,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
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
                  padding: EdgeInsets.only(top: 10),
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
                      margin: EdgeInsets.only(top: 20),
                      // color: Colors.white,
                      width: size.width * 0.60,
                      child: Image.asset("assets/undraw_Co_workers.png"),
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
          height: size.height * 0.40,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
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
                  padding: EdgeInsets.only(top: 10),
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
                      margin: EdgeInsets.only(top: 20),
                      // color: Colors.white,
                      width: size.width * 0.60,
                      child: Image.asset("assets/undraw_Social_life.png"),
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
