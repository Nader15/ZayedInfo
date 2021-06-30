import 'package:elsheikhzayedinfo/component/widgets.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  InkWell buildInkWell(@required String imagename, @required String placename) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/restaurant');
      },
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 4,
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(imagename),
              ),
            ),
          ),
          Text(
            placename,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Categories",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          buildInkWell('images/restaurant.jpg', 'Resturant'),
          buildInkWell('images/atm.jpg', 'ATMs'),
          buildInkWell('images/bank.jpg', 'Banks'),
          buildInkWell('images/beauty.jpg', 'Beauty'),
        ],
      ),
    );
  }
}
