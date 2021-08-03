import 'package:elsheikhzayedinfo/component/widgets.dart';
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
      // AppBar(
      //   leading: Builder(
      //     builder: (context) => IconButton(
      //       icon: Icon(
      //         Icons.arrow_back,
      //         color: Colors.black,
      //       ),
      //       onPressed: () {
      //         Navigator.of(context).pop();
      //       },
      //     ),
      //   ),
      //   backgroundColor: Colors.white,
      //   title: Text(
      //     "Business locator",
      //     style: TextStyle(
      //       color: Colors.black,
      //       fontSize: 25,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         Navigator.of(context).push(
      //             MaterialPageRoute(builder: (context) => SearchScreen()));
      //       },
      //       icon: Icon(
      //         Icons.search,
      //         color: Colors.black,
      //       ),
      //     ),
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(
      //         Icons.my_location,
      //         color: Colors.black,
      //       ),
      //     )
      //   ],
      // ),
      body: MapScreen(),
    );
  }
}
