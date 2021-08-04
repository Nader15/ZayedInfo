import 'package:elsheikhzayedinfo/models/category_item.dart';
import 'package:elsheikhzayedinfo/screens/resturant_screen.dart';
import 'package:elsheikhzayedinfo/ui/appBar.dart';
import 'package:elsheikhzayedinfo/ui/categories.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildScreensAppBar("Categories"),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => buildInkWell(
          CategoriesItem(
            'images/restaurant.jpg',
            "Restaurant",
            () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Restaurant()),
              );
            },
          ),
        ),
      ),
    );
  }
}
