import 'package:elsheikhzayedinfo/component/global.dart';
import 'package:elsheikhzayedinfo/models/cart_item.dart';
import 'package:elsheikhzayedinfo/models/home_models/recent_product_item.dart';
import 'package:elsheikhzayedinfo/screens/cart_screen.dart';
import 'package:elsheikhzayedinfo/ui/appBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class TestScreen extends StatefulWidget {
 // final List<RecentProductItem> recentProductList;

  const TestScreen({Key? key})
      : super(key: key);

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {

  bool isOrderHasBeenPressed = false;
  int count = 1;

  double price = 21.0;
  double increment = 21.0;

  Widget orderContainer() {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height / 5.5,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/sh.jpg'),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: MediaQuery.of(context).size.height / 5.5,
                width: MediaQuery.of(context).size.width / 2,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "test",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )
                      ],
                    ),
                    Row(children: [
                      Text(
                        "$price",
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ]),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              if (count > 1) {
                                count--;
                                itemsCount = count;
                                price = price - increment;
                                totalPrice = price;
                              } else {}
                            });
                          },
                          icon: Icon(Icons.minimize_sharp),
                        ),
                        Text(
                          "$count",
                          style: TextStyle(fontSize: 20),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(
                              () {
                                count++;
                                itemsCount = count;
                                price = price + increment;
                                totalPrice = price;
                              },
                            );
                          },
                          icon: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width / 2,
                child: Text(
                  "ADD TO CART",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(
                    () {
                      cartItemList.add(
                          CartItem("images/sh.jpg", "Test", itemsCount, price));
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CartScreen(),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "CONFIRM",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget mainRow() {
    return Row(
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
        InkWell(
          onTap: () {
            setState(() {
              isOrderHasBeenPressed = !isOrderHasBeenPressed;
            });
          },
          child: Container(
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
        ),
      ],
    );
  }

  Widget mainWidget(RecentProductItem recentProductItem) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 4,
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(recentProductItem.imageName),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                "${recentProductItem.price}",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "In stock",
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
                recentProductItem.productName,
                style: TextStyle(fontSize: 20),
              ),
              Text(recentProductItem.description),
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
            onTap: recentProductItem.yourNavigation,
            leading: Icon(
              Icons.location_on,
              color: Colors.deepOrange,
            ),
            title: Text(
              recentProductItem.shopName,
              style: TextStyle(color: Colors.deepOrange),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEFEF),
      appBar: appBarWithOneIcons("test", Icon(Icons.share), () {
        Share.share("https://elshikhzayed.info/index.php/user/login");
      }),
      body: InkWell(
        onTap: () {
          setState(() {
            isOrderHasBeenPressed = false;
          });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            mainWidget(recentProductList[0]),
            Container(
                child: //orderContainer(),
                    isOrderHasBeenPressed ? orderContainer() : mainRow()),
          ],
        ),
      ),
    );
  }
}
