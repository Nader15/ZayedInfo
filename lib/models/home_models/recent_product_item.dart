import 'package:flutter/material.dart';

class RecentProductItem {
  final String imageName;
  final String productName;
  final double price;
  final String shopName;
  final String description;
  final VoidCallback? yourNavigation;

  RecentProductItem(this.imageName, this.productName, this.price, this.shopName, this.description, this.yourNavigation);

}
