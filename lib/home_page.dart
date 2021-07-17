import 'package:elsheikhzayedinfo/component/home_widgets.dart';
import 'package:elsheikhzayedinfo/screens/categories_screen.dart';
import 'package:elsheikhzayedinfo/screens/offer_nearby_screen.dart';
import 'package:elsheikhzayedinfo/screens/offer_screen.dart';
import 'package:elsheikhzayedinfo/screens/places_screen.dart';
import 'package:elsheikhzayedinfo/screens/product_result_screen.dart';
import 'package:elsheikhzayedinfo/screens/search_screen.dart';
import 'package:elsheikhzayedinfo/screens/shops_neary_screen.dart';
import 'package:elsheikhzayedinfo/screens/test_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'component/my_drawer.dart';
import 'component/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List imglist = [
    'images/first.jpg',
    'images/second.jpg',
    'images/third.jpeg',
    "images/fourth.jpg",
  ];

  List placesImg = [
    'images/restaurant.jpg',
    'images/atm.jpg',
    'images/bank.jpg',
    'images/beauty.jpg',
    'images/restaurant.jpg',
  ];

  List placenameli = [
    'Resturant',
    'ATMs',
    'Banks',
    'Beauty',
    'Resturant',
  ];

  List<Widget> pages = [
    HomePage(),
    Categories(),
  ];
  int pageIndex = 0;

  void x(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: buildHomeAppBar(),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SearchScreen()));
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width - 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Find products ,deals ,shops....",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Icon(Icons.search),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey),
                  ),
                ),
              )),
          MySlider(),
          Container(
            child: Text(
              "Top Categories",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 4,
            child: GridView.builder(
              padding: EdgeInsets.all(10),
              itemCount: placesImg.length,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
              itemBuilder: (BuildContext context, int index) {
                return buildInkWellHome(placesImg[index], placenameli[index]);
              },
            ),
          ),
          discountNearYouContainer('images/sh.jpg', 50, "Mohammed", "ماركتى",
              () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => OffersScreen()));
          }),
          recentProductContainer('images/sh.jpg', "test", 21.0, () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => TestScreen()));
          }),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Shops nearby ",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ShopNearbyScreen()));
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
                Container(
                  height: MediaQuery.of(context).size.height / 2.4,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => shopsNearbyContainer(
                        'images/elnil.png',
                        31,
                        "Nile Scan & Labs",
                        "الشيخ زايد السادس من أكتوبر", () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PlaceScreen()));
                    }),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
