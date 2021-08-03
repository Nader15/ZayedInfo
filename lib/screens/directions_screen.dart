import 'dart:async';
import 'package:elsheikhzayedinfo/ui/appBar.dart';

import 'package:elsheikhzayedinfo/component/widgets.dart';
import 'package:elsheikhzayedinfo/screens/google_map.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DirectionsScreen extends StatefulWidget {
  @override
  _DirectionsScreenState createState() => _DirectionsScreenState();
}

class _DirectionsScreenState extends State<DirectionsScreen> {

  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);


  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildScreensAppBar("Lucca Steakhouse Egypt"),
      body: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          MapScreen(),
          FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: _goToTheLake,
            child: Icon(
              Icons.my_location_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
