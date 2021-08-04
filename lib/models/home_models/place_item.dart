import 'package:flutter/material.dart';

class Places {
  final String imageName;
  final double distance;
  final String placeName;
  final String address;
  final String category;
  final int rate;
  final VoidCallback? yourNavigation;

  Places(this.imageName, this.distance, this.placeName, this.address, this.category, this.rate, this.yourNavigation);


}
