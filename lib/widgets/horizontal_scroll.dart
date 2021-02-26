import 'package:flutter/material.dart';
import 'package:zombifi_app/generated/l10n.dart';

class HorizontalScrollWidget extends StatefulWidget {
  final List<Widget> children;

  const HorizontalScrollWidget({this.children});
  @override
  _HorizontalScrollWidgetState createState() => _HorizontalScrollWidgetState();
}

class _HorizontalScrollWidgetState extends State<HorizontalScrollWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .90,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  // final route = MaterialPageRoute(
                  //   builder: (context) {
                  //     return ChipsPage();
                  //   },
                  // );
                  // Navigator.push(context, route);
                },
                child: Text(
                  AppLocalizations.of(context).zombifiChips,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "gibson",
                  ),
                ),
              ),
              Icon(Icons.arrow_forward_ios_rounded)
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Row(
            children: <Widget>[
              Container(
                width: size.width * .9,
                height: 180.0,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: widget.children,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
