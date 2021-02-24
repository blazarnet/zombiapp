import 'package:flutter/material.dart';
import 'package:zombifi_app/generated/l10n.dart';
import 'package:zombifi_app/src/pages/test_map_page.dart';
import 'package:zombifi_app/utils/colors.dart';

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
    return GestureDetector(
      onTap: () {
        final route = MaterialPageRoute(
          builder: (context) {
            return TestMapPage();
          },
        );
        Navigator.push(context, route);
      },
      child: Container(
        width: size.width * 1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          // color: Colors.red,
        ),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Image.asset(
              "assets/map_prev.png",
              height: size.height * 0.3,
              width: size.width * 1,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 25, 15, 25),
              child: Text(
                AppLocalizations.of(context).infectedZones,
                style: TextStyle(
                  fontFamily: "break_it",
                  fontSize: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
