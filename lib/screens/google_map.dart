import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(30.00808, 31.21093),
    zoom: 11.5,
  );
  late GoogleMapController _googleMapController;
  late Marker _destination;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          GoogleMap(
            initialCameraPosition: _initialCameraPosition,
            myLocationEnabled: false,
            zoomControlsEnabled: false,
            onMapCreated: (controller) => _googleMapController = controller,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              alignment: Alignment.center,
              color: Colors.white,
              height: 100,
              width: 40,
              margin: EdgeInsets.all(15),
              child: Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {

                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.minimize),
                    onPressed: () {
                      setState(() {

                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
