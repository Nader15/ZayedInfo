import 'package:elsheikhzayedinfo/component/colors.dart';
import 'package:elsheikhzayedinfo/models/home_models/discount_item.dart';
import 'package:elsheikhzayedinfo/screens/search_screen.dart';
import 'package:elsheikhzayedinfo/ui/appBar.dart';
import 'package:flutter/material.dart';

class OffersNearbyScreen extends StatefulWidget {
  final List<DiscountItem> discountList;

  const OffersNearbyScreen({Key? key, required this.discountList})
      : super(key: key);

  @override
  _OffersNearbyScreenState createState() => _OffersNearbyScreenState();
}

class _OffersNearbyScreenState extends State<OffersNearbyScreen> {


  Widget offerNearbyContainer(DiscountItem discountItem) {
    return Container(
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
                image: AssetImage(discountItem.imageName),
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
                    Text(discountItem.offerName),
                    Container(
                      alignment: AlignmentDirectional.center,
                      height: 30,
                      width: MediaQuery.of(context).size.width / 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xffed2939),
                      ),
                      child: Text(
                        "${discountItem.discount} % ",
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
                      width: MediaQuery.of(context).size.width / 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(discountItem.shopName),
                          Text("${discountItem.nearDiscount} m "),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffoldBackGround,
        appBar: appBarWithOneIcons(
          "Offers nearby",
          Icon(Icons.search),
          () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SearchScreen()));
          },
        ),
        body: ListView.builder(
          itemCount: widget.discountList.length,
            itemBuilder: (context, index) =>
                offerNearbyContainer(widget.discountList[index])));
  }
}
