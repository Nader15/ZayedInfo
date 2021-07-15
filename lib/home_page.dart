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


  Widget placeContainer(){
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7)
      ),
      margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
      padding: EdgeInsets.all(2),
      height: MediaQuery.of(context).size.height/2.5,
      width: MediaQuery.of(context).size.width/2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(

            child: Stack(
                alignment: AlignmentDirectional.bottomStart,
                children:[ Image.asset(
                  'images/elnil.png',
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
                      "31 m ",
                      style: TextStyle(color: Colors.white,fontSize: 15),
                    ),
                  ),
                ]
            ),
          ),
          Row(
            children: [
              Text("Nile Scan & Labs"),
            ],
          ),
          Row(
            children: [
              Icon(Icons.location_on),
              Text("الشيخ زايد السادس من أكتوبر")
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
                    color: Colors.deepOrange
                ),
                width: 60,
                height: 20,
                child: Text("Clinics",style: TextStyle(color: Colors.white),),
              ),
            ],
          )
        ],
      ),
    );
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
          Container(
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
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => OffersScreen()));
                  },
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: AlignmentDirectional.topStart,
                          child: Stack(
                              alignment: AlignmentDirectional.topEnd,
                              children: [
                                Image.asset(
                                  'images/sh.jpg',
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
                                    "50 %",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                              ]),
                        ),
                        Text(
                          "Mohammed",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
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
          Container(
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
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => TestScreen()));
                  },
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: AlignmentDirectional.topStart,
                          child: Image.asset(
                            'images/sh.jpg',
                            width: MediaQuery.of(context).size.width / 2,
                          ),
                        ),
                        Text(
                          "test",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "21.0",
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
                   height: MediaQuery.of(context).size.height/2.4,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PlaceScreen()));
                      },
                      child: placeContainer(),
                    ),
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

