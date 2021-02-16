import 'package:flutter/material.dart';
import 'package:zombifi_app/generated/l10n.dart';
import 'package:zombifi_app/src/pages/home_page.dart';
import 'package:zombifi_app/utils/colors.dart';
import 'package:zombifi_app/widgets/button_round.dart';

class BuyCreditPage extends StatefulWidget {
  @override
  _BuyCreditPageState createState() => _BuyCreditPageState();
}

class _BuyCreditPageState extends State<BuyCreditPage> {
  final double _fontSize = 20;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
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
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 7),
                  child: Text(
                    AppLocalizations.of(context).buyCredit,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Container(
                  width: size.width * 1,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: <Widget>[
                        _myCredit(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _myCredit() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: <Widget>[
          Container(
            height: 60,
            width: 60,
            child: Image.asset('assets/coin-stack.png'),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Text(
            AppLocalizations.of(context).myCredit,
            style: TextStyle(
              fontSize: _fontSize,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 7)),
          Text(
            '\$200.00',
            style: TextStyle(
              fontSize: _fontSize,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          _recharge(),
          Padding(padding: EdgeInsets.only(top: 25)),
          _myShopping(context),
        ],
      ),
    );
  }

  ButtonRoundWidget _recharge() {
    return ButtonRoundWidget(
      child: Text(
        AppLocalizations.of(context).recharge,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      height: 40,
      minWidth: 120,
      colorButton: colorGreen,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      onPressed: () {},
    );
  }

  Widget _myShopping(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .58,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                AppLocalizations.of(context).myShopping,
                style: TextStyle(
                  fontSize: _fontSize,
                ),
              ),
              Icon(
                Icons.format_indent_decrease,
                size: 25,
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: <Widget>[
              _buy(),
              _buy(),
              _buy(),
              _buy(),
              _buy(),
              _buy(),
              _buy(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buy() {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "23/Feb/2021",
              ),
              Text(
                "Compra de créditos para fichas",
              ),
              Text(
                "ZombiFi",
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                "\$150.00",
              ),
            ],
          )
        ],
      ),
    );
  }
}
