import 'package:elsheikhzayedinfo/models/home_models/discount_item.dart';
import 'package:elsheikhzayedinfo/screens/places_screen.dart';
import 'package:elsheikhzayedinfo/ui/appBar.dart';
import 'package:flutter/material.dart';
import 'package:custom_timer/custom_timer.dart';
import 'package:share/share.dart';

class OffersScreen extends StatefulWidget {
 // final DiscountItem discountItem;
  const OffersScreen({Key? key,}) ;

  @override
  _OffersScreenState createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  int offerDuration = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEFEF),
      appBar: appBarWithOneIcons("Mohammed", Icon(Icons.share), () {
        Share.share("https://elshikhzayed.info/index.php/user/login");
      }),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(children: [
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
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  "50 % off ",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "2.32 km ",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Color(0xffdc143c),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15))),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
            height: MediaQuery.of(context).size.height / 12,
            width: MediaQuery.of(context).size.width - 50,
            decoration: BoxDecoration(
              color: Color(0xffefcc00),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Text(
                  "Ends in : $offerDuration Days",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CustomTimer(
                  from: Duration(days: offerDuration),
                  to: Duration(days: 0),
                  onBuildAction: CustomTimerAction.auto_start,
                  builder: (CustomTimerRemainingTime remaining) {
                    return Text(
                      "${remaining.days}:${remaining.hours}:${remaining.minutes}",
                      style: TextStyle(fontSize: 25.0, color: Colors.white),
                    );
                  },
                ),
              ],
            ),
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
              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mohammed",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "ss",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PlaceScreen()));
              },
              leading: Icon(
                Icons.location_on,
                color: Colors.deepOrange,
              ),
              title: Text(
                "ماركتى",
                style: TextStyle(color: Colors.deepOrange),
              ),
            ),
          ),
        ]),
      ]),
    );
  }
}
