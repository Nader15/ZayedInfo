import 'package:elsheikhzayedinfo/component/widgets.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Categories",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          buildInkWell(context, 'images/restaurant.jpg', 'Resturant'),
          buildInkWell(context, 'images/atm.jpg', 'ATMs'),
          buildInkWell(context, 'images/bank.jpg', 'Banks'),
          buildInkWell(context, 'images/beauty.jpg', 'Beauty'),
        ],
      ),
    );
  }
}
