
import 'package:elsheikhzayedinfo/home.dart';
import 'package:elsheikhzayedinfo/screens/bookmark_screen.dart';
import 'package:elsheikhzayedinfo/screens/business_locator_screen.dart';
import 'package:elsheikhzayedinfo/screens/business_management_screen.dart';
import 'package:elsheikhzayedinfo/screens/cart_screen.dart';
import 'package:elsheikhzayedinfo/screens/categories_screen.dart';
import 'package:elsheikhzayedinfo/screens/checkout_screen.dart';
import 'package:elsheikhzayedinfo/screens/directions_screen.dart';
import 'package:elsheikhzayedinfo/screens/edit_profile_screen.dart';
import 'package:elsheikhzayedinfo/screens/google_map.dart';
import 'package:elsheikhzayedinfo/screens/food_type.dart';
import 'package:elsheikhzayedinfo/screens/inbox_screen.dart';
import 'package:elsheikhzayedinfo/screens/info_screen.dart';
import 'package:elsheikhzayedinfo/screens/login_screen.dart';
import 'package:elsheikhzayedinfo/screens/messages_screen.dart';
import 'package:elsheikhzayedinfo/screens/notification_screen.dart';
import 'package:elsheikhzayedinfo/screens/offer_nearby_screen.dart';
import 'package:elsheikhzayedinfo/screens/offer_screen.dart';
import 'package:elsheikhzayedinfo/screens/order-screen.dart';
import 'package:elsheikhzayedinfo/screens/places_screen.dart';
import 'package:elsheikhzayedinfo/screens/product_result_screen.dart';
import 'package:elsheikhzayedinfo/screens/restaurant_screen.dart';
import 'package:elsheikhzayedinfo/screens/search_screen.dart';
import 'package:elsheikhzayedinfo/screens/setting_screen.dart';
import 'package:elsheikhzayedinfo/screens/shops_neary_screen.dart';
import 'package:elsheikhzayedinfo/screens/test_screen.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     //  home: TestScreen(recentProductList: [],),
      home: Home(),
    );
  }
}
