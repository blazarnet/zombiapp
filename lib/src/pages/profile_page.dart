import 'package:flutter/material.dart';
import 'package:zombifi_app/generated/l10n.dart';
import 'package:zombifi_app/widgets/button_round.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  nested() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              // centerTitle: true,
              collapseMode: CollapseMode.parallax,
              titlePadding: EdgeInsets.only(left: 45),
              // title: Text(
              //   "Alan Moreno Martinez",
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 18,
              //   ),
              // ),
              background: Image.asset(
                "assets/man.png",
                fit: BoxFit.contain,
              ),
            ),
          )
        ];
      },
      body: Center(
        child: Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Alan Moreno Martinez",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "Izamal-Yucatán",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                        _edit(),
                      ],
                    ),
                    // Padding(padding: EdgeInsets.only(bottom: 50)),
                    _data(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: nested(),
    );
  }

  ButtonRoundWidget _edit() {
    return ButtonRoundWidget(
      child: Text(
        AppLocalizations.of(context).edit,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      onPressed: () {},
      colorButton: Colors.grey,
      height: 45,
      minWidth: 100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }

  Widget _data(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.7,
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          _cel(),
          _email(),
          _password(),
          _ubication(),
        ],
      ),
    );
  }

  ButtonRoundWidget _cel() {
    return ButtonRoundWidget(
      onPressed: () {},
      elevetion: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      height: 55,
      colorButton: Color.fromRGBO(235, 235, 235, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.phone_iphone_outlined,
                  ),
                  Text(AppLocalizations.of(context).phoneNumber)
                ],
              )
            ],
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }

  ButtonRoundWidget _email() {
    return ButtonRoundWidget(
      onPressed: () {},
      elevetion: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      height: 55,
      colorButton: Color.fromRGBO(235, 235, 235, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                  ),
                  Text(AppLocalizations.of(context).email)
                ],
              )
            ],
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }

  ButtonRoundWidget _password() {
    return ButtonRoundWidget(
      onPressed: () {},
      elevetion: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      height: 55,
      colorButton: Color.fromRGBO(235, 235, 235, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.lock,
                  ),
                  Text(AppLocalizations.of(context).password)
                ],
              )
            ],
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }

  ButtonRoundWidget _ubication() {
    return ButtonRoundWidget(
      onPressed: () {},
      elevetion: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      height: 55,
      colorButton: Color.fromRGBO(235, 235, 235, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  // Icon(
                  //     // Icons,
                  //     ),
                  Text(AppLocalizations.of(context).ubication)
                ],
              )
            ],
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
