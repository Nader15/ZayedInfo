import 'package:elsheikhzayedinfo/component/widgets.dart';
import 'package:elsheikhzayedinfo/screens/food_type.dart';
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
      appBar: BuildScreensAppBar('Restaurants'),
      body: ListView(
        children: [
          buildInkWell(context, 'images/restaurant.jpg', Gril(), "Gril"),
          buildInkWell(
              context, 'images/restaurant.jpg', Gril(), "Fish Markets"),
          buildInkWell(context, 'images/restaurant.jpg', Gril(), "Pizza"),
          buildInkWell(context, 'images/restaurant.jpg', Gril(), "Sushi"),
        ],
      ),
    );
  }
}
