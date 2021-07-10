import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  // final Color color = HexColor.fromHex('#EFEFEF');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEFEFEF),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [
              Stack(alignment: AlignmentDirectional.topCenter, children: [
                Container(
                  height: MediaQuery.of(context).size.height / 4,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('images/sh.jpg'),
                    ),
                  ),
                ),
                Container(
                  child: ListTile(
                    title: Text(
                      "test",
                      style: TextStyle(color: Colors.white),
                    ),
                    leading: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    trailing: Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      "21.0",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("In stock",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff415B20),
                        fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15))),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(30),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "test",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text("ss"),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                // padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.location_on,
                    color: Colors.deepOrange,
                  ),
                  title: Text(
                    "Nour",
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ),
              ),
            ]),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width / 2,
                    child: Column(
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "21.0",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),
                Container(
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    "Order",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
