import 'package:elsheikhzayedinfo/component/widgets.dart';
import 'package:elsheikhzayedinfo/screens/resturant_screen.dart';
import 'package:elsheikhzayedinfo/ui/appBar.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildScreensAppBar("Categories"),
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title: Text(
      //     "Categories",
      //     style: TextStyle(
      //       color: Colors.black,
      //       fontSize: 25,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      // ),
      body: ListView(
        children: [
          buildInkWell(
              context, 'images/restaurant.jpg', Restaurant(), "Restaurant"),
          buildInkWell(context, 'images/atm.jpg', Restaurant(), "Atm"),
          buildInkWell(context, 'images/bank.jpg', Restaurant(), "Banks"),
          buildInkWell(context, 'images/beauty.jpg', Restaurant(), "Beauty"),
        ],
      ),
    );
  }
}
