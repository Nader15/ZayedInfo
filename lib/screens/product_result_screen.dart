import 'package:elsheikhzayedinfo/models/product_item.dart';
import 'package:elsheikhzayedinfo/screens/search_screen.dart';
import 'package:elsheikhzayedinfo/ui/appBar.dart';
import 'package:elsheikhzayedinfo/ui/product_container.dart';
import 'package:flutter/material.dart';

class ProductResultScreen extends StatefulWidget {
  const ProductResultScreen({Key? key}) : super(key: key);

  @override
  _ProductResultScreenState createState() => _ProductResultScreenState();
}

class _ProductResultScreenState extends State<ProductResultScreen> {
  bool isGrid = false;

  GridView productInGridView() {
    return GridView.builder(
      itemCount: 8,
      //padding: EdgeInsets.all(0),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        maxCrossAxisExtent: isGrid
            ? MediaQuery.of(context).size.width / 2
            : MediaQuery.of(context).size.width,
        mainAxisExtent: MediaQuery.of(context).size.height / 3,
      ),
      itemBuilder: (context, index) =>
          productContainer(ProductItem('images/sh.jpg', "test", 100, "Nour")),
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
        isGrid ? Icon(Icons.list) : Icon(Icons.grid_view_outlined),
        () {
          setState(() {
            isGrid = !isGrid;
          });
        },
      ),
      body: productInGridView(),
    );
  }
}
