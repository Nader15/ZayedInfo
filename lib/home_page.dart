import 'package:elsheikhzayedinfo/models/home_models/discount_item.dart';
import 'package:elsheikhzayedinfo/models/home_models/recent_product_item.dart';
import 'package:elsheikhzayedinfo/models/home_models/place_item.dart';
import 'package:elsheikhzayedinfo/ui/home_widgets.dart';
import 'package:elsheikhzayedinfo/screens/categories_screen.dart';
import 'package:elsheikhzayedinfo/screens/offer_screen.dart';
import 'package:elsheikhzayedinfo/screens/places_screen.dart';
import 'package:elsheikhzayedinfo/screens/search_screen.dart';
import 'package:elsheikhzayedinfo/screens/shops_neary_screen.dart';
import 'package:elsheikhzayedinfo/screens/test_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'component/global.dart';
import 'ui/my_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<DiscountItem> discountList = [];
  DiscountItem? item;

  List imageList = [
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
    'images/cafe.jpg',
    'images/car.jpg',
    'images/charities.jpg',
    'images/clinics.jpg',
  ];

  List placeNameList = [
    'Restaurant',
    'ATMs',
    'Banks',
    'Beauty',
    'Cafe',
    'Car service',
    'Charities',
    'Clinics',
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SearchScreen()));
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
                  return buildInkWellHome(
                      placesImg[index], placeNameList[index]);
                },
              ),
            ),
            discountNearYouContainer(
              DiscountItem(
                "images/sh.jpg",
                50,
                "Mohammed",
                "Nour",
                "ss",
                2.32,
                () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => OffersScreen(
                        discountList: [
                          DiscountItem(
                            "images/sh.jpg",
                            50,
                            "Mohammed",
                            "Nour",
                            "ss",
                            2.32,
                            () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => PlaceScreen()));
                            },
                            1,
                            300,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                1,
                300,
              ),
            ),
            recentProductContainer(
              RecentProductItem(
                'images/sh.jpg',
                "test",
                100,
                "Metro",
                "sssss",
                () {
                  setState(
                    () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TestScreen()));
                      recentProductList.add(
                        RecentProductItem(
                          'images/sh.jpg',
                          "test",
                          100,
                          "Metro",
                          "sssss",
                          () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => PlaceScreen()),
                            );
                          },
                        ),
                      );
                    },
                  );
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => TestScreen(
                  //       recentProductList: [
                  //         RecentProductItem(
                  //           'images/sh.jpg',
                  //           "test",
                  //           100,
                  //           "Metro",
                  //           "sssss",
                  //           () {
                  //             Navigator.of(context).push(
                  //               MaterialPageRoute(
                  //                   builder: (context) => PlaceScreen()),
                  //             );
                  //           },
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // );
                },
              ),
            ),
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
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
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
                        Places(
                          'images/elNil.png',
                          31,
                          "Nile Scan & Labs",
                          "الشيخ زايد السادس من أكتوبر",
                          "clinics",
                          0,
                          () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PlaceScreen()));
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
