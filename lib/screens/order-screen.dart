import 'package:elsheikhzayedinfo/component/widgets.dart';
import 'package:elsheikhzayedinfo/screens/directions_screen.dart';
import 'package:elsheikhzayedinfo/screens/google_map.dart';
import 'package:elsheikhzayedinfo/screens/inbox_screen.dart';
import 'package:elsheikhzayedinfo/screens/resturant_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  static const int c = 0xFFFF0000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                child: Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                      padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('images/luca.jpg'),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            color: Colors.white,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.arrow_back,
                            ),
                          ),
                          Text(
                            "Lucca Steakhouse Egypt",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                          Icon(
                            Icons.bookmark_border,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.share,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              buildInkWell(
                  context, 'images/restaurant.jpg', Restaurant(), "Restaurant"),
              Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildProductButton("PRODUCT"),
                    buildProductButton("REVIEWS"),
                    buildProductButton("GALLERY"),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 6,
                width: double.infinity,
                child: Center(
                  child: Text("No Product found"),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: buildOutlinedButton(
                        Icons.mail,
                        Inbox(),
                      ),
                    ),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              content: Container(
                                height: 100,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Call"),
                                    Text("+201102005599"),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.phone,
                          color: Colors.orange,
                        ),
                        style: ButtonStyle(
                          side: MaterialStateProperty.all<BorderSide>(
                              BorderSide(color: const Color(c))),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                      ),
                    ),
                    Expanded(
                      child: buildOutlinedButton(
                        Icons.directions,
                        DirectionsScreen(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Lucca Steakhouse Egypt \n "),
                      Text("2.45 \n "),
                      Text(
                          "انضم الينا و استمتع ب # شرائح اللحم كما لم يحدث من قبل فى مصر! \n"),
                      Text(
                          "join us and enjoy our dry-aged #steaks like never before in Egypt \n "),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Icon(Icons.add_location),
                    Text(
                      "Al Guezira Plaza 6 October City,\n Giza Governorate,Egypt",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.all(8),
                  height: MediaQuery.of(context).size.height / 4,
                  child: MapScreen())
            ],
          ),
        ),
      ),
    );
  }

  OutlinedButton buildOutlinedButton(IconData ic, Widget w) {
    return OutlinedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => w),
        );
      },
      child: Icon(
        ic,
        color: Colors.orange,
      ),
      style: ButtonStyle(
        side: MaterialStateProperty.all<BorderSide>(
            BorderSide(color: const Color(c))),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
    );
  }

  Expanded buildProductButton(String label) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          setState(() {});
        },
        child: Text(label),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
        ),
      ),
    );
  }
}
