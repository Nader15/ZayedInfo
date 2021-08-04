import 'package:elsheikhzayedinfo/models/category_item.dart';
import 'package:elsheikhzayedinfo/screens/food_type.dart';
import 'package:elsheikhzayedinfo/ui/categories.dart';
import 'package:flutter/material.dart';
import 'package:elsheikhzayedinfo/ui/appBar.dart';

class Restaurant extends StatefulWidget {
  @override
  _RestaurantState createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildScreensAppBar('Restaurants'),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => buildInkWell(
          CategoriesItem(
            'images/luca.jpg',
            "Grill",
            () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => FoodType()),
              );
            },
          ),
        ),
      ),
    );
  }
}
//
