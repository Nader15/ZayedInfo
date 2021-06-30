import 'package:elsheikhzayedinfo/component/widgets.dart';
import 'package:flutter/material.dart';

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
            buildInkWell(context, 'images/restaurant.jpg', "Gril"),
            buildInkWell(context, 'images/restaurant.jpg', "Fish Markets"),
            buildInkWell(context, 'images/restaurant.jpg', "Pizaa"),
            buildInkWell(context, 'images/restaurant.jpg', "Sushi"),
          ],
        ));
  }
}
