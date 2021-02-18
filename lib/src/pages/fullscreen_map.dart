import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
// import 'package:zombifi_app/generated/l10n.dart';

class FullScreenMap extends StatefulWidget {
  @override
  _FullScreenMapState createState() => _FullScreenMapState();
}

class _FullScreenMapState extends State<FullScreenMap> {
  MapboxMapController mapController;
  final center = LatLng(20.966997449381108, -89.6241699816832);
  String selectedStyle = 'mapbox://styles/alanmar11/cklb4aprc0noh17nwrtprqp1c';
  final obscureStyle = 'mapbox://styles/alanmar11/cklb4fgdm2ivi17nxf7nh8ga8';
  final streetStyle = 'mapbox://styles/alanmar11/cklb4aprc0noh17nwrtprqp1c';

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
        FloatingActionButton(
          child: Icon(Icons.add_to_home_screen),
          onPressed: () {
            if (selectedStyle == streetStyle) {
              selectedStyle = obscureStyle;
            } else {
              selectedStyle = streetStyle;
            }
            setState(() {});
          },
        )
      ],
    );
  }

  MapboxMap createMap() {
    return MapboxMap(
      styleString: selectedStyle,
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: center,
        zoom: 16,
      ),
    );
  }
}
