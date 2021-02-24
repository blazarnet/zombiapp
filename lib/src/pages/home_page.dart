import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zombifi_app/generated/l10n.dart';
import 'package:zombifi_app/src/pages/buy_chip_page.dart';
import 'package:zombifi_app/src/pages/buy_credit_page.dart';
import 'package:zombifi_app/utils/colors.dart';
import 'package:zombifi_app/widgets/card_chips.dart';
import 'package:zombifi_app/widgets/card_map_widget.dart';
import 'package:zombifi_app/widgets/card_paused.dart';
import 'package:zombifi_app/widgets/card_connect.dart';
import 'package:zombifi_app/widgets/card_expired.dart';
import 'package:zombifi_app/widgets/horizontal_scroll.dart';

class HomePage extends StatefulWidget {
  // void main() {
  //   SystemChrome.setSystemUIOverlayStyle(
  //     SystemUiOverlayStyle(
  //       statusBarColor: Colors.transparent,
  //       statusBarBrightness: Brightness.dark,
  //       statusBarIconBrightness: Brightness.dark,
  //       systemNavigationBarIconBrightness: Brightness.dark,
  //     ),
  //   );
  // }

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgGreen,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: _avatar(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: _myCredit(),
          )
        ],
        backgroundColor: bgGreen,
        elevation: 0,
      ),
      body: Container(
        width: size.width * 1,
        height: size.height * 1,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              Container(
                width: size.width * 1,
                // color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 0),
                  child: Column(
                    children: <Widget>[
                      _statusConnect(),
                      // _statusDisconnect(),
                      // _statusOff(),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                      ),
                      _scrollWidgetChips(context),
                      // Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        // color: Colors.green,
                        width: size.width * 1,
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: size.width * .90,
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    AppLocalizations.of(context).exploreZones,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Icon(Icons.arrow_forward_ios)
                                ],
                              ),
                            ),
                            Container(
                              width: size.width * 1,
                              child: _cardMapWidget(),
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
            style: TextStyle(
              color: Colors.white,
              fontFamily: "gibson",
            ),
          ),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 37,
              width: 37,
              child: Image.asset('assets/coin-stack.png'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  AppLocalizations.of(context).myCredit,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: "gibson",
                  ),
                ),
                Text(
                  "200.00",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    fontFamily: "gibson",
                  ),
                )
              ],
            )
          ],
        ),
      ),
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
          padding: const EdgeInsets.all(10),
          child: _cardChipsWidget(context),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: _cardChipsWidget(context),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: _cardChipsWidget(context),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: _cardChipsWidget(context),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: _cardChipsWidget(context),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          // child: _cardChips1(context),
        ),
      ],
    );
  }

  Widget _cardChipsWidget(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .4,
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
            padding: const EdgeInsets.fromLTRB(15, 25, 15, 25),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Basic",
                      style: TextStyle(
                        fontSize: 17,
                        fontFamily: "gibson",
                      ),
                    ),
                    Text(
                      "15.00",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
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

  // CardChipsWidget _cardChips(BuildContext context) {
  //   final size = MediaQuery.of(context).size;
  //   return CardChipsWidget(
  //     color: colorGreen,
  //     elevation: 20,
  //     child: GestureDetector(
  //       onTap: () {
  //         final route = MaterialPageRoute(
  //           builder: (context) {
  //             return BuyChipPage();
  //           },
  //         );
  //         Navigator.push(context, route);
  //       },
  //       child: Container(
  //         height: size.height * 0.3,
  //         width: size.width * 0.6,
  //         child: Padding(
  //           padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: <Widget>[
  //               Text(
  //                 'Basic 15',
  //                 style: TextStyle(
  //                   color: Colors.white,
  //                   fontSize: 23,
  //                 ),
  //               ),
  //               Padding(
  //                 padding: EdgeInsets.only(top: 5),
  //               ),
  //               Text(
  //                 '\$15.00',
  //                 style: TextStyle(
  //                   color: Colors.white,
  //                   fontSize: 20,
  //                 ),
  //               ),
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.end,
  //                 children: <Widget>[
  //                   Container(
  //                     // margin: EdgeInsets.only(top: 10),
  //                     // color: Colors.white,
  //                     width: size.width * 0.4,
  //                     height: size.height * 0.095,
  //                     child: Image.asset(
  //                       "assets/undraw_Co_workers.png",
  //                       fit: BoxFit.contain,
  //                     ),
  //                   ),
  //                 ],
  //               )
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // CardChipsWidget _cardChips1(BuildContext context) {
  //   final size = MediaQuery.of(context).size;
  //   return CardChipsWidget(
  //     color: Color.fromRGBO(0, 185, 172, 1),
  //     elevation: 20,
  //     child: GestureDetector(
  //       child: Container(
  //         height: size.height * 0.52,
  //         width: size.width * 0.6,
  //         child: Padding(
  //           padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: <Widget>[
  //               Text(
  //                 'Plus Double',
  //                 style: TextStyle(
  //                   color: Colors.white,
  //                   fontSize: 23,
  //                 ),
  //               ),
  //               Padding(
  //                 padding: EdgeInsets.only(top: 5),
  //               ),
  //               Text(
  //                 '\$30.00',
  //                 style: TextStyle(
  //                   color: Colors.white,
  //                   fontSize: 20,
  //                 ),
  //               ),
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.end,
  //                 children: <Widget>[
  //                   Container(
  //                     // margin: EdgeInsets.only(top: 10),
  //                     // color: Colors.white,
  //                     width: size.width * 0.4,
  //                     height: size.height * 0.095,
  //                     child: Image.asset(
  //                       "assets/undraw_Social_life.png",
  //                       fit: BoxFit.contain,
  //                     ),
  //                   ),
  //                 ],
  //               )
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
