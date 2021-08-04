import 'package:elsheikhzayedinfo/models/category_item.dart';
import 'package:flutter/material.dart';

Widget buildInkWell(CategoriesItem categoriesItem) {
  return Builder(builder: (BuildContext context)=>InkWell(
      onTap:categoriesItem.yourNavigation,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 4,
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(categoriesItem.imageName),
              ),
            ),
          ),
          Text(
            categoriesItem.categoryName,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}