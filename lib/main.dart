import 'package:elsheikhzayedinfo/home.dart';
import 'package:elsheikhzayedinfo/screens/categories_screen.dart';
import 'package:elsheikhzayedinfo/screens/gril_screen.dart';
import 'package:elsheikhzayedinfo/screens/order-screen.dart';
import 'package:elsheikhzayedinfo/screens/resturant_screen.dart';
import 'package:elsheikhzayedinfo/service/google_map.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/cateories': (context) => Categories(),
        '/restaurant': (context) => Restaurant()
      },
      debugShowCheckedModeBanner: false,
//      home: OrderScreen(),
      home: MapScreen(),
    );
  }
}
