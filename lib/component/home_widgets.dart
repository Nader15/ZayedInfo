import 'package:elsheikhzayedinfo/screens/cart_screen.dart';
import 'package:elsheikhzayedinfo/screens/notification_screen.dart';
import 'package:elsheikhzayedinfo/screens/offer_nearby_screen.dart';
import 'package:elsheikhzayedinfo/screens/product_result_screen.dart';
import 'package:flutter/material.dart';


AppBar buildHomeAppBar() {
  return AppBar(
    leading: Builder(
      builder: (context) => IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
    ),
    backgroundColor: Colors.white,
    title: Text(
      "El Sheikh Zayed info ",
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    actions: [
      Builder(
        builder: (ctx) => IconButton(
          onPressed: () {
            Navigator.of(ctx)
                .push(MaterialPageRoute(builder: (ctx) => CartScreen()));
          },
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
        ),
      ),
      Builder(
          builder: (ctx) => IconButton(
            onPressed: () {
              Navigator.of(ctx).push(MaterialPageRoute(
                  builder: (ctx) => NotificationScreen()));
            },
            icon: Icon(
              Icons.notifications_none,
              color: Colors.black,
            ),
          ))
    ],
  );
}

InkWell buildInkWellHome(
     String imageName,  String placeName) {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(imageName),
            ),
          ),
        ),
        Text(placeName),
      ],
    ),
  );
}

Widget discountNearYouContainer(String imageName, int discount,
    String offerName, String shopName, VoidCallback? yourNavigation) {
  return Builder(
    builder: (BuildContext context) => Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Discount near you",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OffersNearbyScreen()));
                },
                child: Text(
                  "Show All",
                  style: TextStyle(
                    color: Colors.deepOrange,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: yourNavigation,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                alignment: AlignmentDirectional.topStart,
                child: Stack(alignment: AlignmentDirectional.topEnd, children: [
                  Image.asset(
                    imageName,
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    alignment: AlignmentDirectional.center,
                    height: 40,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffed2939),
                    ),
                    child: Text(
                      "$discount %",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ]),
              ),
              Text(
                "Mohammed",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                "ماركتى",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange),
              ),
            ]),
          )
        ],
      ),
    ),
  );
}


Widget recentProductContainer(String imageName, String productName,
    double price, VoidCallback? yourNavigation) {
  return Builder(
    builder: (BuildContext context) => Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent Product",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductResultScreen()));
                },
                child: Text(
                  "Show All",
                  style: TextStyle(
                    color: Colors.deepOrange,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: yourNavigation,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                alignment: AlignmentDirectional.topStart,
                child: Image.asset(
                  imageName,
                  width: MediaQuery.of(context).size.width / 2,
                ),
              ),
              Text(
                productName,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                "$price",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange),
              ),
            ]),
          )
        ],
      ),
    ),
  );
}


Widget shopsNearbyContainer(String imageName, int distance, String placeName,
    String address, VoidCallback? yourNavigation) {
  return Builder(
    builder: (BuildContext context) => InkWell(
      onTap: yourNavigation,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(7)),
        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
        padding: EdgeInsets.all(2),
        height: MediaQuery.of(context).size.height / 2.5,
        width: MediaQuery.of(context).size.width / 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child:
                  Stack(alignment: AlignmentDirectional.bottomStart, children: [
                Image.asset(
                  imageName,
                  width: MediaQuery.of(context).size.width / 2,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  alignment: AlignmentDirectional.center,
                  height: 40,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xffed2939),
                  ),
                  child: Text(
                    "$distance m ",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ]),
            ),
            Row(
              children: [
                Text(placeName),
              ],
            ),
            Row(
              children: [
                Icon(Icons.location_on),
                Text(address),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.star_border),
                      Text("0(0)"),
                    ],
                  ),
                ),
                Container(
                  alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.deepOrange),
                  width: 60,
                  height: 20,
                  child: Text(
                    "Clinics",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
