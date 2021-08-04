import 'package:elsheikhzayedinfo/models/home_models/place_item.dart';
import 'package:elsheikhzayedinfo/screens/order-screen.dart';
import 'package:elsheikhzayedinfo/ui/place_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:elsheikhzayedinfo/ui/appBar.dart';

class FoodType extends StatefulWidget {
  @override
  _FoodTypeState createState() => _FoodTypeState();
}

class _FoodTypeState extends State<FoodType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildScreensAppBar("Grill"),
      body: ListView.builder(
        padding: EdgeInsets.all(5),
        itemCount: 5,
        itemBuilder: (context, index) => buildPlaceCard(
          Places(
            "images/luca.jpg",
            2.45,
            "Lucca Steakhouse Egypt",
            "Al Guezira Plaza 6 October City,Giza Government",
            "Restaurants",
            0,
            () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => OrderScreen()));
            },
          ),
        ),
      ),
    );
  }
}
