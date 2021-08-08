import 'package:flutter/material.dart';

class DiscountItem {
  final String imageName;
  final double discount;
  final String offerName;
  final String shopName;
  final String description;
  final double distance;
  final int discountDuration;
  final double nearDiscount;
  final VoidCallback? yourNavigation;

  DiscountItem(this.imageName, this.discount, this.offerName, this.shopName,
      this.description, this.distance, this.yourNavigation, this.discountDuration, this.nearDiscount);
}
