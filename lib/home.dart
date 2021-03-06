import 'package:elsheikhzayedinfo/home_page.dart';
import 'package:elsheikhzayedinfo/screens/bookmark_screen.dart';
import 'package:elsheikhzayedinfo/screens/categories_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  // final List <BookMarkItem> bookMarkList;
  //
  // const Home({ required this.bookMarkList}) ;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Widget> pages = [
    HomePage(),
    Categories(),
    BookMarkScreen(),
  ];

  int pageIndex = 0;

  void x(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        selectedItemColor: Colors.deepOrange,
        onTap: x,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.bookmark_border),
            label: "Book mark",
          )
        ],
      ),
      body: pages.elementAt(pageIndex),
    );
  }
}
