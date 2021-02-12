import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
// import 'package:zombifi_app/generated/l10n.dart';

class FullScreenMap extends StatefulWidget {
  @override
  _FullScreenMapState createState() => _FullScreenMapState();
}

class _FullScreenMapState extends State<FullScreenMap> {
  MapboxMapController mapController;
  final center = LatLng(21.00314054128376, -89.69979878720912);
  // String selectedStyle = 'mapbox://styles/alanmar11/ckl1celhn0c0c17pt5jntwcff';
  // final obscureStyle = 'mapbox://styles/alanmar11/ckl1cp64j0cbb17mlevc9y4zj';
  final streetStyle = 'mapbox://styles/alanmar11/ckl1celhn0c0c17pt5jntwcff';

  void _onMapCreated(MapboxMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: createMap(),
      ),
      floatingActionButton: floatingButtons(),
    );
  }

  Column floatingButtons() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        //Symbols
        // FloatingActionButton(
        //   child: Icon(Icons.emoji_symbols_outlined),
        //   onPressed: () {
        //     mapController.addSymbol(
        //       SymbolOptions(
        //         geometry: center,
        //         // iconSize: 3,
        //         iconImage: 'attraction-15',
        //         textField: 'Blazar Networks',
        //         // textOffset: Offset(0, 2),
        //       ),
        //     );
        //   },
        // ),
        // SizedBox(height: 5),
        //ZoomIn
        FloatingActionButton(
          child: Icon(Icons.zoom_in),
          onPressed: () {
            mapController.animateCamera(CameraUpdate.zoomIn());
          },
        ),
        SizedBox(height: 5),
        //ZoomOut
        FloatingActionButton(
          child: Icon(Icons.zoom_out),
          onPressed: () {
            mapController.animateCamera(CameraUpdate.zoomOut());
          },
        ),
        SizedBox(height: 5),
        // FloatingActionButton(
        //   child: Icon(Icons.add_to_home_screen),
        //   onPressed: () {
        //     if (selectedStyle == streetStyle) {
        //       selectedStyle = obscureStyle;
        //     } else {
        //       selectedStyle = streetStyle;
        //     }
        //     setState(() {});
        //   },
        // )
      ],
    );
  }

  MapboxMap createMap() {
    return MapboxMap(
      styleString: streetStyle,
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: center,
        zoom: 16,
      ),
    );
  }
}
