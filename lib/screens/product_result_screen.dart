import 'package:elsheikhzayedinfo/screens/search_screen.dart';
import 'package:elsheikhzayedinfo/screens/test_screen.dart';
import 'package:elsheikhzayedinfo/ui/appBar.dart';
import 'package:flutter/material.dart';

class ProductResultScreen extends StatefulWidget {
  const ProductResultScreen({Key? key}) : super(key: key);

  @override
  _ProductResultScreenState createState() => _ProductResultScreenState();
}

class _ProductResultScreenState extends State<ProductResultScreen> {
  bool isGride = false;

  Widget productContainer() {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => TestScreen()));
      },
      child: Container(
        height: MediaQuery.of(context).size.height / 3,
        // width: MediaQuery.of(context).size.width / 2.5,
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
                      Text("test"),
                      Container(
                        alignment: AlignmentDirectional.center,
                        height: 30,
                        width: MediaQuery.of(context).size.width / 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.deepOrange,
                        ),
                        child: Text(
                          "21.0",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.black,
                      ),
                      Text("Nour"),
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

  GridView productInGridView() {
    return GridView.builder(
      itemCount: 8,
      //padding: EdgeInsets.all(0),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        maxCrossAxisExtent: isGride
            ? MediaQuery.of(context).size.width / 2
            : MediaQuery.of(context).size.width,
        mainAxisExtent: MediaQuery.of(context).size.height / 3,
      ),
      itemBuilder: (context, index) => productContainer(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEFEF),
      appBar: appBarWithTwoIcons(
        "Products result",
        Icon(Icons.search),
        () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => SearchScreen()));
        },
        isGride ? Icon(Icons.list) : Icon(Icons.grid_view_outlined),
        () {
          setState(() {
            isGride = !isGride;
          });
        },
      ),

      body: productInGridView(),
    );
  }
}
