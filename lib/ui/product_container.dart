import 'package:elsheikhzayedinfo/models/home_models/recent_product_item.dart';
import 'package:elsheikhzayedinfo/screens/test_screen.dart';
import 'package:flutter/material.dart';

Widget productContainer(RecentProductItem recentProductItem) {
  return Builder(
    builder: (BuildContext context) => InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => TestScreen()));
      },
      child: Container(
        height: MediaQuery.of(context).size.height / 3,
        margin: EdgeInsets.fromLTRB(5, 2, 5, 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 5,
              decoration: (BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(recentProductItem.imageName),
                  fit: BoxFit.fill,
                ),
              )),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(recentProductItem.productName),
                      Container(
                        alignment: AlignmentDirectional.center,
                        height: 30,
                        width: MediaQuery.of(context).size.width / 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.deepOrange,
                        ),
                        child: Text(
                          "${recentProductItem.price}",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.black,
                      ),
                      Text(recentProductItem.shopName),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
