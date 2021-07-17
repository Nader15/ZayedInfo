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
    return  Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children:[
        GoogleMap(
          initialCameraPosition: _initialCameraPositio,
          myLocationEnabled: false,
          zoomControlsEnabled: false,
          onMapCreated: (controller) => _googleMapController = controller,
        ),
        Container(
          color: Colors.white,
          height: 70,
          width: 30,
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              Icon(Icons.add),
              Divider(color: Colors.grey,thickness: 1,),
              Icon(Icons.minimize),

            ],
          ),

        ),
      ]
    );
     //  Stack(
     // alignment: AlignmentDirectional.bottomEnd,
     // children: [
     //   GoogleMap(
     //     initialCameraPosition: _initialCameraPositio,
     //     myLocationEnabled: false,
     //     zoomControlsEnabled: false,
     //     onMapCreated: (controller) => _googleMapController = controller,
     //   ),
     //   Container(
     //     margin: EdgeInsets.all(15),
     //     height: 70,
     //     width: 40,
     //     child: Column(
     //       mainAxisAlignment: MainAxisAlignment.spaceAround,
     //       children: [
     //         IconButton(
     //           icon: Icon(
     //             Icons.add,
     //           ),
     //           onPressed: () {},
     //         ),
     //         Divider(
     //           color: Colors.grey,
     //           thickness: 1,
     //         ),
     //         IconButton(
     //           icon: Icon(
     //             Icons.minimize,
     //           ),
     //           onPressed: () {},
     //         ),
     //       ],
     //     ),
     //     color: Colors.white,
     //   ),
     // ],
     //
     //  );
  }
}
