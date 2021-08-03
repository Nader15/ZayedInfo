import 'package:elsheikhzayedinfo/screens/cart_screen.dart';
import 'package:elsheikhzayedinfo/screens/places_screen.dart';
import 'package:elsheikhzayedinfo/screens/search_screen.dart';
import 'package:elsheikhzayedinfo/ui/appBar.dart';
import 'package:flutter/material.dart';

class ShopNearbyScreen extends StatefulWidget {
  const ShopNearbyScreen({Key? key}) : super(key: key);

  @override
  _ShopNearbyScreenState createState() => _ShopNearbyScreenState();
}

class _ShopNearbyScreenState extends State<ShopNearbyScreen> {
  TextStyle _s = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  Card buildPlaceCard(String imageName, double distance, String shopName,
      String location, VoidCallback? f) {
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
                  height: MediaQuery.of(context).size.height / 4,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(imageName),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width - 10,
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
      appBar: appBarWithTwoIcons(
        "Shops nearby",
        Icon(Icons.search),
        () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SearchScreen()));
        },
        Icon(Icons.shopping_cart_outlined),
        () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CartScreen(
                    cartList: [],
                  )));
        },
      ),

      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => buildPlaceCard('images/elNil.png', 30,
            "Nile Scan 7 Labs", "الشيخ زايد السادس من اكتوبر", () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => PlaceScreen()));
        }),
      ),
    );
  }
}
