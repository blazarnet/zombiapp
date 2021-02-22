import 'package:flutter/material.dart';
import 'package:zombifi_app/generated/l10n.dart';
import 'package:zombifi_app/src/pages/fullscreen_map.dart';
import 'package:zombifi_app/src/pages/test_map_page.dart';

class CardMapWidget extends StatefulWidget {
  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<CardMapWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FlatButton(
      onPressed: () {
        final route = MaterialPageRoute(builder: (context) {
          // return FullScreenMap();
          return TestMapPage();
        });
        Navigator.push(context, route);
      },
      child: Card(
        elevation: 15,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Container(
          alignment: Alignment.bottomLeft,
          width: size.width * .90,
          height: size.height * .15,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              AppLocalizations.of(context).exploreZones,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
