import 'package:flutter/material.dart';

class RecentProductItem {
  final String imageName;
  final String productName;
  final double price;
  final VoidCallback? yourNavigation;

  RecentProductItem(this.imageName, this.productName, this.yourNavigation, this.price);

}
