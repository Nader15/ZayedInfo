import 'package:carousel_slider/carousel_slider.dart';
import 'package:elsheikhzayedinfo/models/home_models/discount_item.dart';
import 'package:elsheikhzayedinfo/models/home_models/recent_product_item.dart';
import 'package:elsheikhzayedinfo/models/home_models/place_item.dart';
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
            Navigator.of(ctx).push(MaterialPageRoute(
                builder: (ctx) => CartScreen(
                      cartList: [],
                    )));
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

InkWell buildInkWellHome(String imageName, String placeName) {
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

Widget discountNearYouContainer(DiscountItem discountItem) {
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
                      builder: (context) => OffersNearbyScreen(
                            discountList: [
                              DiscountItem("images/sh.jpg", 50, "Mohammed",
                                  "Nour", "ss", 2.32, () {}, 1, 300)
                            ],
                          )));
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
            onTap: discountItem.yourNavigation,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: AlignmentDirectional.topStart,
                  child: Stack(
                    alignment: AlignmentDirectional.topEnd,
                    children: [
                      Image.asset(
                        discountItem.imageName,
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
                          "${discountItem.discount} %",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  discountItem.offerName,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  discountItem.shopName,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget recentProductContainer(RecentProductItem recentProductItem) {
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
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductResultScreen(
                        recentProductList: [
                          RecentProductItem('images/sh.jpg', "test", 100,
                              "metro", "ssss", () {}),
                          RecentProductItem('images/car.jpg', "test", 100,
                              "metro", "ssss", () {}),
                        ],
                      ),
                    ),
                  );
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
            onTap: recentProductItem.yourNavigation,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                alignment: AlignmentDirectional.topStart,
                child: Image.asset(
                  recentProductItem.imageName,
                  width: MediaQuery.of(context).size.width / 2,
                ),
              ),
              Text(
                recentProductItem.productName,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                "${recentProductItem.price}",
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

Widget shopsNearbyContainer(Places shopNearBy) {
  return Builder(
    builder: (BuildContext context) => InkWell(
      onTap: shopNearBy.yourNavigation,
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
                  shopNearBy.imageName,
                  width: MediaQuery.of(context).size.width / 2,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  alignment: AlignmentDirectional.center,
                  height: 35,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xffed2939),
                  ),
                  child: Text(
                    "${shopNearBy.distance} m ",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ]),
            ),
            Row(
              children: [
                Text(shopNearBy.placeName),
              ],
            ),
            Row(
              children: [
                Icon(Icons.location_on),
                Text(shopNearBy.address),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.star_border),
                      Text("0(${shopNearBy.rate})"),
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
                    shopNearBy.category,
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

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  List imageList = [
    'images/first.jpg',
    'images/second.jpg',
    'images/third.jpeg',
    //"images/fourth.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: CarouselSlider.builder(
        itemCount: imageList.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              imageList[index],
              fit: BoxFit.fill,
            ),
          );
        },
        options: CarouselOptions(
          height: 180,
          initialPage: 0,
        ),
      ),
    );
  }
}
