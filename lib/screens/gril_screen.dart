import 'package:elsheikhzayedinfo/component/widgets.dart';
import 'package:elsheikhzayedinfo/screens/order-screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gril extends StatefulWidget {
  @override
  _GrilState createState() => _GrilState();
}

class _GrilState extends State<Gril> {

  TextStyle _s = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  Card buildPlaceCard(double distance, String shopName, String location,
      VoidCallback? f) {
    return Card(
      elevation: 5,
      child: InkWell(
        onTap: f,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height / 4,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('images/restaurant.jpg'),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width - 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          Text(
                            "0(0)",
                            style: _s,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "Resturant",
                              style: _s,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "$distance Km",
                              style: _s,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Text(
                shopName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Row(
                children: [
                  Icon(Icons.add_location),
                  Text(
                    location,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildScreensAppBar("Grill"),
      body: ListView.builder(
          padding: EdgeInsets.all(5),
          itemCount: 5,
          itemBuilder: (context, index) =>
              buildPlaceCard(2.45, "Lucca Steakhouse Egypt",
                  "Al Guezira Plaza 6 October City,Giza Government", () {
                    Navigator.of(context)
                        .push(
                        MaterialPageRoute(builder: (context) => OrderScreen()));
                  }), 

      ),
    );
  }


}
