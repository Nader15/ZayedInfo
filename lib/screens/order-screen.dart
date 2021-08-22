import 'package:elsheikhzayedinfo/component/colors.dart';
import 'package:elsheikhzayedinfo/component/global.dart';
import 'package:elsheikhzayedinfo/models/bookmark_item.dart';
import 'package:elsheikhzayedinfo/screens/directions_screen.dart';
import 'package:elsheikhzayedinfo/screens/google_map.dart';
import 'package:elsheikhzayedinfo/screens/inbox_screen.dart';
import 'package:elsheikhzayedinfo/screens/restaurant_screen.dart';
import 'package:elsheikhzayedinfo/ui/appBar.dart';
import 'package:elsheikhzayedinfo/ui/dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  static const int c = 0xFFFF0000;

  Widget _widget = Container();
  bool _bool = true;

  Widget buildContainer(String label, VoidCallback? f) {
    return Expanded(
      child: InkWell(
        onTap: f,
        child: Container(
          margin: EdgeInsets.only(right: 5),
          padding: EdgeInsets.all(10),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.deepOrange,
          ),
        ),
      ),
    );
  }

  Widget buildOutlinedButton(IconData ic, VoidCallback? f) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: 5),
        child: OutlinedButton(
          onPressed: f,
          child: Icon(
            ic,
            color: Colors.deepOrange,
          ),
          style: ButtonStyle(
            side: MaterialStateProperty.all<BorderSide>(
                BorderSide(color: const Color(c))),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackGround,
      appBar: appBarWithTwoIcons(
          "Lucca Steakhouse Egypt",
          _bool ? Icon(Icons.bookmark_border) : Icon(Icons.bookmark),
          () {
            setState(() {
              _bool = !_bool;
              bookMarkList.add(
                BookMarkItem('images/elNil.png', "Nile Scan & Labs",
                    "يضم مركز النيل للأشعه و التحاليل نخبه من أساتذه و أعضاء هيئه التدريس بالقصر العينى و معهد الأورام "),
              );
            });
          },
          Icon(Icons.share),
          () {
            Share.share("https://elshikhzayed.info/index.php/user/login");
          }),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 4,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/luca.jpg'),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Restaurant()));
              },
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 8,
                    //  padding: const EdgeInsets.all(30),
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/restaurant.jpg'),
                      ),
                    ),
                  ),
                  Text(
                    "Restaurant",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildContainer("PRODUCT ", () {
                    setState(() {
                      _bool = true;
                      _widget = Text(
                        "No products found",
                        style: TextStyle(fontSize: 20),
                      );
                    });
                  }),
                  buildContainer("REVIEWS", () {
                    setState(() {
                      _bool = true;
                      _widget = Expanded(
                        child: Container(
                          //  padding: EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width - 20,
                          height: 70,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "No reviews",
                                style: TextStyle(fontSize: 20),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  width: MediaQuery.of(context).size.width - 20,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Add Review",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.deepOrange),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
                  }),
                  buildContainer("GALLERY", () {
                    setState(() {
                      _bool = true;
                      _widget = ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) => (Container(
                          margin: EdgeInsets.only(right: 10),
                          child: Image.asset('images/elNil.png'),
                        )),
                      );
                    });
                  }),
                ],
              ),
            ),
            Container(
              height: 100,
              //width: double.infinity,
              child: Center(
                child: _widget,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      buildOutlinedButton(Icons.messenger, () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Inbox()));
                      }),
                      buildOutlinedButton(Icons.phone, () {
                        buildDialog(context, "+201102005599");
                      }),
                      buildOutlinedButton(Icons.directions, () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DirectionsScreen(),
                        ));
                      }),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Lucca Steakhouse Egypt",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "2.45 ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "انضم الينا و استمتع ب # شرائح اللحم\n كما لم يحدث من قبل فى مصر! \n",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                          Container(
                            child: Text(
                              "join us and enjoy our dry-aged #steaks\n like never before in Egypt \n ",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.deepOrange,
                  ),
                  Text(
                      "Al Guezira Plaza 6 October City,\n Giza Governorate,Egypt"),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 4,
              child: MapScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
