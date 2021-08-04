import 'package:elsheikhzayedinfo/models/home_models/place_item.dart';
import 'package:elsheikhzayedinfo/screens/cart_screen.dart';
import 'package:elsheikhzayedinfo/screens/places_screen.dart';
import 'package:elsheikhzayedinfo/screens/search_screen.dart';
import 'package:elsheikhzayedinfo/ui/appBar.dart';
import 'package:elsheikhzayedinfo/ui/place_card.dart';
import 'package:flutter/material.dart';

class ShopNearbyScreen extends StatefulWidget {
  const ShopNearbyScreen({Key? key}) : super(key: key);

  @override
  _ShopNearbyScreenState createState() => _ShopNearbyScreenState();
}

class _ShopNearbyScreenState extends State<ShopNearbyScreen> {
  TextStyle _s = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWithTwoIcons(
        "Shops nearby",
        Icon(Icons.search),
        () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SearchScreen()));
        },
        Icon(Icons.shopping_cart_outlined),
        () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CartScreen(
                cartList: [],
              ),
            ),
          );
        },
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(5),
        itemCount: 3,
        itemBuilder: (context, index) => buildPlaceCard(
          Places(
            'images/elNil.png',
            30,
            "Nile Scan 7 Labs",
            "الشيخ زايد السادس من اكتوبر",
            "Clinics",
            0,
            () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => PlaceScreen()));
            },
          ),
        ),
      ),
    );
  }
}
