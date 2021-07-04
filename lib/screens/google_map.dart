import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static const _initialCameraPositio = CameraPosition(
    target: LatLng(30.056021, 30.976639),
  );
  late GoogleMapController _googleMapController;
  late Marker _destination;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        GoogleMap(
          initialCameraPosition: _initialCameraPositio,
          myLocationEnabled: false,
          zoomControlsEnabled: false,
          onMapCreated: (controller) => _googleMapController = controller,
        ),
      ],
    ));
  }
}
