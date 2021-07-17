import 'package:elsheikhzayedinfo/component/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {


  Widget whenCardPageEmpty() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/sh.jpg'), fit: BoxFit.fill),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "No Items in the shopping cart",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Reload"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget mainRow() {
    return Row(
      children: [
        Container(
          height: 86,
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              children: [
                Text(
                  "ORDER TOTAL",
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
          },
          child: Container(
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width / 2,
            child: Text(
              "CHECKOUT",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEFEF),
      appBar: BuildScreensAppBar("Cart"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Container(
            height: MediaQuery.of(context).size.height-170,
            child: ListView.builder(
              itemBuilder: (BuildContext context , index)=>
                  Container(
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 6,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 4,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage('images/sh.jpg'),
                                    )),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                width: MediaQuery.of(context).size.width / 4,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Test",
                                      style: TextStyle(
                                          fontSize: 20, fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      "Qty : 1",
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          width: MediaQuery.of(context).size.width / 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "20.0",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.delete_outline,
                                ),
                                onPressed: () {},
                                color: Colors.deepOrange,
                                iconSize: 30,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
            ),
          ),
          mainRow(),
        ]
      ),
    );
  }
}
