import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.cyan),
            child: ListTile(
                title: Icon(
                  Icons.account_circle,
                  size: 100,
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      InkWell(
                        child: Text(
                          "Log in",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        onTap: () {},
                      ),
                      Text(
                        "  /  ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      InkWell(
                        child: Text(
                          "Creat Account",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                )),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.list),
            title: Text("Categories"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.business_center),
            title: Text("Manage Your Business"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.favorite),
            title: Text("Favorites"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.info_outline),
            title: Text("About Us"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.language),
            title: Text("Language"),
          ),
        ],
      ),
    );
  }
}

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  List imglist = [
    'images/first.jpg',
    'images/second.jpg',
    'images/third.jpeg',
    //"images/fourth.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: CarouselSlider.builder(
        itemCount: imglist.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              imglist[index],
              fit: BoxFit.fill,
            ),
          );
        },
        options: CarouselOptions(
          height: 180,
          initialPage: 0,
        ),
      ),
    );
  }
}

InkWell buildInkWellHome(
    @required String imagename, @required String placename) {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(imagename),
            ),
          ),
        ),
        Text(placename),
      ],
    ),
  );
}

AppBar buildHomeAppBar() {
  return AppBar(
    leading: Builder(
      builder: (context) => IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
    ),
    backgroundColor: Colors.white,
    title: Text(
      "El Sheikh Zayed info ",
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.shopping_cart,
          color: Colors.black,
        ),
      )
    ],
  );
}

AppBar BuildScreensAppBar(@required String pageTitle) {
  return AppBar(
    leading: Builder(
      builder: (context) => IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ),
    backgroundColor: Colors.white,
    title: Text(
      pageTitle,
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

InkWell buildInkWell(BuildContext context, @required String imagename,
    @required String placename) {
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
