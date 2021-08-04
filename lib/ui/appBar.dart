import 'package:flutter/material.dart';

AppBar buildScreensAppBar(@required String pageTitle) {
  return AppBar(
    leading: Builder(
      builder: (context) => IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ),
    backgroundColor: Colors.white,
    title: Text(
      pageTitle,
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

// AppBar with two icons in action

AppBar appBarWithTwoIcons(
    String screenName,
    Icon firstIconName,
    VoidCallback? firstIconNavigator,
    Icon secondIconName,
    VoidCallback? secondIconNavigator) {
  return AppBar(
    leading: Builder(
      builder: (context) => IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ),
    backgroundColor: Colors.white,
    title: Text(
      screenName,
      style: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    actions: [
      IconButton(
        onPressed: firstIconNavigator,
        icon:firstIconName,
        color: Colors.black,
      ),
      IconButton(
        onPressed: secondIconNavigator,
        icon: secondIconName,
        color: Colors.black,
      ),
    ],
  );
}

// AppBar with one icon in action

AppBar appBarWithOneIcons(
    String screenName, Icon iconName, VoidCallback? iconNavigator) {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text(
      screenName,
      style: TextStyle(fontSize: 20, color: Colors.black),
    ),
    leading: Builder(
      builder: (BuildContext context) => IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.of(context).pop();
        },
        color: Colors.black,
      ),
    ),
    actions: [
      IconButton(onPressed: iconNavigator, icon: iconName, color: Colors.black)
    ],
  );
}
