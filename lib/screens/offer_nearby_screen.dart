import 'package:elsheikhzayedinfo/screens/search_screen.dart';
import 'package:flutter/material.dart';

class OffersNearbyScreen extends StatefulWidget {
  const OffersNearbyScreen({Key? key}) : super(key: key);

  @override
  _OffersNearbyScreenState createState() => _OffersNearbyScreenState();
}

class _OffersNearbyScreenState extends State<OffersNearbyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEFEF),

      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Colors.black,
        ),
        title: Text(
          "Offers nearby",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SearchScreen()));
            },
            icon: Icon(Icons.search),
              color: Colors.black

          )
        ],
      ),
      body:  Container(
        height: MediaQuery.of(context).size.height / 3,
        margin: EdgeInsets.fromLTRB(5, 2, 5, 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 5,
              decoration: (BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/sh.jpg'),
                  fit: BoxFit.fill,
                ),
              )),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Mohammed"),
                      Container(
                        alignment: AlignmentDirectional.center,
                        height: 30,
                        width: MediaQuery.of(context).size.width / 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Color(0xffed2939),
                        ),
                        child: Text(
                          "50 % ",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Text("ماركتى "),
                            Text("300 m "),
                          ],
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
