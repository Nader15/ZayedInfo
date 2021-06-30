import 'package:elsheikhzayedinfo/screens/categories_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  ];

  List placenameli = [
    'Resturant',
    'ATMs',
    'Banks',
    'Beauty',
  ];

  List<Widget> pages = [
    HomePage(),
    Categories(),
  ];
  int pageIndex = 0;
  void x(int index) {
    setState(() {
      pageIndex = index;
      // pages[pageIndex];
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
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                suffixIcon: Icon(Icons.search),
                hintText: "Find products,deals,shops....",
              ),
            ),
          ),
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
//                shrinkWrap: true,
//                physics: ScrollPhysics(),
              padding: EdgeInsets.all(10),
              itemCount: placesImg.length,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
              itemBuilder: (BuildContext context, int index) {
                return buildInkWell(placesImg[index], placenameli[index]);
              },
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Recent Product",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                  ),
                ),
                buildInkWell("images/fourth.jpg", "test")
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Image.asset('images/third.jpeg')),
                Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Image.asset('images/third.jpeg')),
                Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Image.asset('images/third.jpeg')),
                Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Image.asset('images/third.jpeg')),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
