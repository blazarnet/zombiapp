import 'package:flutter/material.dart';
import 'package:zombifi_app/generated/l10n.dart';
import 'package:zombifi_app/src/pages/buy_chip_page.dart';
import 'package:zombifi_app/src/pages/buy_credit_page.dart';
import 'package:zombifi_app/src/pages/profile_page.dart';
import 'package:zombifi_app/utils/colors.dart';
import 'package:zombifi_app/widgets/card_chips.dart';
import 'package:zombifi_app/widgets/card_map_widget.dart';
import 'package:zombifi_app/widgets/card_paused.dart';
import 'package:zombifi_app/widgets/card_connect.dart';
import 'package:zombifi_app/widgets/card_expired.dart';
import 'package:zombifi_app/widgets/horizontal_scroll.dart';

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
        height: size.height * 1,
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
                      _statusConnect(),
                      // _statusDisconnect(),
                      // _statusOff(),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                      ),
                      _cardMapWidget(),
                      Padding(padding: EdgeInsets.only(top: 20)),
                      _scrollWidgetChips(context),
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
    return GestureDetector(
      onTap: () {
        // final route = MaterialPageRoute(
        //   builder: (context) {
        //     return ProfilePage();
        //   },
        // );
        // Navigator.push(context, route);
      },
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
        ),
        child: CircleAvatar(
          child: Text(
            'AM',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _myCredit() {
    return GestureDetector(
      onTap: () {
        // final route = MaterialPageRoute(
        //   builder: (context) {
        //     return BuyCreditPage();
        //   },
        // );
        // Navigator.push(context, route);
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
                fontSize: 18,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 17,
                  width: 17,
                  child: Image.asset('assets/coin-stack.png'),
                ),
                Text(
                  " \$200.00",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
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

  CardConnectWidget _statusConnect() {
    return CardConnectWidget();
  }

  CardPausedWidget _statusDisconnect() {
    return CardPausedWidget();
  }

  CardExpiredWidget _statusOff() {
    return CardExpiredWidget();
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
          child: _cardChips1(context),
        ),
      ],
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
          height: size.height * 0.3,
          width: size.width * 0.6,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
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
                      // margin: EdgeInsets.only(top: 10),
                      // color: Colors.white,
                      width: size.width * 0.4,
                      height: size.height * 0.095,
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
          height: size.height * 0.52,
          width: size.width * 0.6,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
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
                      // margin: EdgeInsets.only(top: 10),
                      // color: Colors.white,
                      width: size.width * 0.4,
                      height: size.height * 0.095,
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
