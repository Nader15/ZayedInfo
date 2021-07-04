import 'package:elsheikhzayedinfo/home.dart';
import 'package:elsheikhzayedinfo/screens/business_locator_screen.dart';
import 'package:elsheikhzayedinfo/screens/business_management_screen.dart';
import 'package:elsheikhzayedinfo/screens/categories_screen.dart';
import 'package:elsheikhzayedinfo/screens/edit_profile_screen.dart';
import 'package:elsheikhzayedinfo/screens/google_map.dart';
import 'package:elsheikhzayedinfo/screens/gril_screen.dart';
import 'package:elsheikhzayedinfo/screens/order-screen.dart';
import 'package:elsheikhzayedinfo/screens/resturant_screen.dart';
import 'package:elsheikhzayedinfo/screens/setting_screen.dart';
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
      initialRoute: '/',
      routes: {
        '/cateories': (context) => Categories(),
        '/restaurant': (context) => Restaurant(),
        '/manage your business': (context) => BusinessLocator(),
        '/edit profile': (context) => EditProfile(),
        '/manage your business': (context) => BusinessManagement(),
      },
      debugShowCheckedModeBanner: false,
//      home: OrderScreen(),
      home: SettingScreen(),
    );
  }
}
