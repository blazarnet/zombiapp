import 'package:flutter/material.dart';
import 'package:zombifi_app/generated/l10n.dart';

class HorizontalScrollPromoWidget extends StatefulWidget {
  final List<Widget> children;

  const HorizontalScrollPromoWidget({this.children});
  @override
  _HorizontalScrollWidgetState createState() => _HorizontalScrollWidgetState();
}

class _HorizontalScrollWidgetState extends State<HorizontalScrollPromoWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .90,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                AppLocalizations.of(context).promotions,
                style: TextStyle(fontSize: 16),
              ),
              Icon(Icons.arrow_forward_ios_rounded)
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Row(
            children: <Widget>[
              Container(
                width: size.width * .9,
                height: 170.0,
                child: ListView(
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
