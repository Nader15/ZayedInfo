import 'package:elsheikhzayedinfo/component/widgets.dart';
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
                          Icon(
                            Icons.arrow_back,
                            color: Colors.white,
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
              buildInkWell(context, 'images/restaurant.jpg', 'Resturant'),
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
                      child: buildOutlinedButton(),
                    ),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.mail,
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
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.directions,
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
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  OutlinedButton buildOutlinedButton() {
    return OutlinedButton(
      onPressed: () {},
      child: Icon(
        Icons.phone,
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
