import 'package:flutter/material.dart';

class DiscountItem{

  final String imageName;
  final double discount;
  final String offerName;
 final String shopName;
 final VoidCallback? yourNavigation;

  DiscountItem(this.imageName, this.discount, this.offerName, this.shopName, this.yourNavigation);
}