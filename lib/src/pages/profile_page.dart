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
              collapseMode: CollapseMode.pin,
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
            padding: EdgeInsets.fromLTRB(20, 0, 20, 500),
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
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
                    )
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
}
