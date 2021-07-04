import 'package:elsheikhzayedinfo/component/widgets.dart';
import 'package:elsheikhzayedinfo/screens/google_map.dart';
import 'package:flutter/material.dart';

class BusinessLocator extends StatefulWidget {
  @override
  _BusinessLocatorState createState() => _BusinessLocatorState();
}

class _BusinessLocatorState extends State<BusinessLocator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Business locator",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.my_location,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: MapScreen(),
    );
  }
}
