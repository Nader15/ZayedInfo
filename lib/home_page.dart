import 'package:elsheikhzayedinfo/screens/categories_screen.dart';
import 'package:elsheikhzayedinfo/screens/search_screen.dart';
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
          // Container(
          //   height: MediaQuery.of(context).size.height / 2,
          //   padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          //   child: Column(
          //     children: [
          //       Row(
          //         children: [
          //           Text(
          //             "Recent Product",
          //             style: TextStyle(
          //               color: Colors.black,
          //               fontSize: 25,
          //               fontWeight: FontWeight.bold,
          //             ),
          //           ),
          //           ListTile(
          //             title: Text("Show all"),
          //             trailing: Icon(Icons.arrow_forward_sharp),
          //             onTap: (){},
          //           )
          //         ],
          //       ),
          //       InkWell(
          //         child: Column(children: [
          //           Container(color: Colors.black,),
          //           Text("test"),
          //           Text("21.0"),
          //         ],),
          //       ),
          //     ],
          //   ),
          // ),
          Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              // height: MediaQuery.of(context).size.height / 4
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("gjjfyjf"),
                      Text("gjjfyjf"),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 200,
                    child: ListView.builder(
                      // physics: ScrollPhysics(),
                      // shrinkWrap: true,
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Image.asset('images/third.jpeg')),
                    ),
                  ),
                ],
              )),
        ]),
      ),
    );
  }
}

//Container(
//                  width: double.infinity,
//                  height: MediaQuery.of(context).size.height / 4,
//                  child: ListView.builder(
//                    itemBuilder: (context, index) => Container(
//                      child: Image.asset('images/third.jpeg'),
//                    ),
//                  ),
//                  height: MediaQuery.of(context).size.height / 4,
//                  decoration: BoxDecoration(
//                    image: DecorationImage(
//                      image: AssetImage('images/third.jpeg'),
//                      //fit: BoxFit.fitHeight,
//                    ),
//                  ),
