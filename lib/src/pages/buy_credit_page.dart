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
        // leading: IconButton(
        //   onPressed: () {
        //     final route = MaterialPageRoute(builder: (context) {
        //       return HomePage();
        //     });
        //     Navigator.pop(context, route);
        //   },
        //   icon: Icon(
        //     Icons.arrow_back,
        //     color: Colors.black,
        //   ),
        // ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        width: size.width * 1,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 7, bottom: 7),
                              child: Text(
                                AppLocalizations.of(context).buyCredit,
                                style: TextStyle(fontSize: 25),
                              ),
                            ),
                          ],
                        ),
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
                      ],
                    ),
                  ),
                  Container(
                    width: size.width * 1,
                    color: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: size.width * 1,
                            height: size.height * .45,
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 3, 8, 3),
                                  child: _buy(),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 3, 8, 3),
                                  child: _buy(),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 3, 8, 3),
                                  child: _buy(),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 3, 8, 3),
                                  child: _buy(),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 3, 8, 3),
                                  child: _buy(),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 3, 8, 3),
                                  child: _buy(),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 3, 8, 3),
                                  child: _buy(),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 3, 8, 3),
                                  child: _buy(),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 3, 8, 3),
                                  child: _buy(),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
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
      onPressed: _onRechargePressed,
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

  void _onRechargePressed() {
    showModalBottomSheet(
      // shape: ShapeBorder(BorderRadius.only()),
      context: context,
      elevation: 0,
      barrierColor: colorBarrier,
      builder: (context) {
        return Container(
          color: colorBarrier,
          height: 400,
          child: Container(
            child: Column(
              children: <Widget>[
                Positioned(top: -50, right: 50, child: _iconCredit()),
                _creditButtons(),
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

  Widget _iconCredit() {
    return Container(
      // color: Colors.red,
      height: 60,
      width: 90,
      child: Image.asset('assets/money-check-alt-solid.png'),
    );
  }

  Widget _creditButtons() {
    return Container(
      // color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.5,
                ),
              ),
              child: _credit(),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.5,
                ),
              ),
              child: _credit(),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.5,
                ),
              ),
              child: _credit(),
            ),
          ],
        ),
      ),
    );
  }

  ButtonRoundWidget _credit() {
    return ButtonRoundWidget(
      child: Text(
        '\$150',
        style: TextStyle(),
      ),
      height: 60,
      minWidth: 270,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      onPressed: () {},
    );
  }
}
