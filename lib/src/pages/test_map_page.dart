import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:zombifi_app/utils/colors.dart';

class TestMapPage extends StatefulWidget {
  @override
  _TestMapPageState createState() => _TestMapPageState();
}

class _TestMapPageState extends State<TestMapPage> {
  Completer<GoogleMapController> _mapController = Completer();
  static const LatLng _center =
      const LatLng(20.966997449381108, -89.6241699816832);
  final Set<Marker> _markers = {};
  LatLng _lastMapPosition = _center;
  MapType _currentMapType = MapType.normal;
  static final CameraPosition _position1 = CameraPosition(
    bearing: 192,
    target: LatLng(20.966997449381108, -89.6241699816832),
    tilt: 60,
    zoom: 50,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 15,
            ),
            mapType: _currentMapType,
            markers: _markers,
            onCameraMove: _onCameraMove,
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Column(
                children: <Widget>[
                  _button(_onMapTypeButtonPressed, Icons.map_outlined),
                  SizedBox(height: 15),
                  _button(_onAddMarkerButtonPressed, Icons.add_location_alt),
                  SizedBox(height: 15),
                  _button(_goToPosition1, Icons.location_searching),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _onMapCreated(GoogleMapController controller) {
    _mapController.complete(controller);
  }

  _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }

  _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }

  _onAddMarkerButtonPressed() {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId(_lastMapPosition.toString()),
        position: _lastMapPosition,
        infoWindow: InfoWindow(
          title: "This is a title",
          snippet: "This is a snippet",
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });
  }

  Future<void> _goToPosition1() async {
    final GoogleMapController controller = await _mapController.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_position1));
  }

  Widget _button(Function function, IconData icon) {
    return FloatingActionButton(
      onPressed: function,
      materialTapTargetSize: MaterialTapTargetSize.padded,
      backgroundColor: colorGreen,
      child: Icon(
        icon,
        size: 35.0,
      ),
    );
  }
}
