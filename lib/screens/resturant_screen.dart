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
      body: Container(
        color: Colors.blueGrey,
      ),
    );
  }
}
