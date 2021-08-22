import 'package:elsheikhzayedinfo/screens/google_map.dart';
import 'package:elsheikhzayedinfo/screens/search_screen.dart';
import 'package:elsheikhzayedinfo/ui/appBar.dart';
import 'package:flutter/material.dart';

class BusinessLocator extends StatefulWidget {
  @override
  _BusinessLocatorState createState() => _BusinessLocatorState();
}

class _BusinessLocatorState extends State<BusinessLocator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithTwoIcons("Business locator", Icon(Icons.search), () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => SearchScreen()));
      },
          Icon(
            Icons.my_location,
          ),
          () {}),

      body: MapScreen(),
    );
  }
}
