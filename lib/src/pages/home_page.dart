import 'package:flutter/material.dart';
import 'package:zombifi_app/generated/l10n.dart';
import 'package:zombifi_app/src/pages/buy_credit_page.dart';
import 'package:zombifi_app/widgets/card_chips.dart';
import 'package:zombifi_app/widgets/card_map_widget.dart';
import 'package:zombifi_app/widgets/card_status_on.dart';
import 'package:zombifi_app/widgets/horizontal_scroll.dart';
import 'package:zombifi_app/widgets/horizontal_scroll_promo.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _name = 'Alan';
  String _lastName = 'Moreno';
  String _secondaLastName = 'Martinez';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: _avatar(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: _myCredit(),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        width: size.width * 1,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: _welcome(context),
              ),
              Container(
                width: size.width * 1,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Column(
                    children: <Widget>[
                      _statusOnWidget(),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                      ),
                      _cardMapWidget(),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      _scrollWidgetChips(context),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      _scrollWidgetPromotions(context),
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

  Widget _avatar() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
      ),
      child: CircleAvatar(
        child: Text(
          'AM',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _myCredit() {
    return GestureDetector(
      onTap: () {
        final route = MaterialPageRoute(
          builder: (context) {
            return BuyCreditPage();
          },
        );
        Navigator.push(context, route);
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              AppLocalizations.of(context).myCredit,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 15,
                  width: 15,
                  child: Image.asset('assets/coin-stack.png'),
                ),
                Text(
                  " \$200.00",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _welcome(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    "${AppLocalizations.of(context).hello},",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    "$_name " + "$_lastName " + "$_secondaLastName",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }

  CardStatusOnWidget _statusOnWidget() {
    return CardStatusOnWidget();
  }

  CardMapWidget _cardMapWidget() {
    return CardMapWidget();
  }

  HorizontalScrollWidget _scrollWidgetChips(BuildContext context) {
    return HorizontalScrollWidget(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(3, 3, 3, 8),
          child: _cardChips(context),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(3, 3, 3, 8),
          child: _cardChips(context),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(3, 3, 3, 8),
          child: _cardChips(context),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(3, 3, 3, 8),
          child: _cardChips(context),
        ),
      ],
    );
  }

  HorizontalScrollPromoWidget _scrollWidgetPromotions(BuildContext context) {
    return HorizontalScrollPromoWidget(
      children: <Widget>[
        Padding(
          // padding: const EdgeInsets.all(3.0),
          padding: const EdgeInsets.fromLTRB(3, 3, 3, 8),
          child: _cardPromotions(context),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(3, 3, 3, 8),
          child: _cardPromotions(context),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(3, 3, 3, 8),
          child: _cardPromotions(context),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(3, 3, 3, 8),
          child: _cardPromotions(context),
        ),
      ],
    );
  }

  CardChipsWidget _cardChips(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CardChipsWidget(
      elevation: 10,
      color: Colors.white,
      child: Container(
        child: FlatButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: size.width * .45,
                child: Padding(
                  padding: EdgeInsets.all(6),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      // color: Color.fromARGB(5, 175, 102, 1),
                                      color: Color.fromRGBO(5, 175, 102, .5),
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.shopping_cart_rounded,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Basic 15',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '15.50',
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0, top: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                        "${AppLocalizations.of(context).type}: "),
                                    Text(
                                      'Tiempo',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                        "${AppLocalizations.of(context).duration}: "),
                                    Text(
                                      '1h',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                        "${AppLocalizations.of(context).download}: "),
                                    Text(
                                      '2Mbps',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                        "${AppLocalizations.of(context).upload}: "),
                                    Text(
                                      '1Mbps',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      )
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

  CardChipsWidget _cardPromotions(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CardChipsWidget(
      elevation: 10,
      child: Container(
        child: FlatButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Container(
            width: size.width * 0.52,
            child: Image(
              fit: BoxFit.fill,
              image: NetworkImage(
                  "https://image.freepik.com/free-vector/flat-cartoon-quick-rocket-rocketship-launch-from-mobile-phone-cellphone_101884-411.jpg"),
            ),
          ),
        ),
      ),
    );
  }
}
