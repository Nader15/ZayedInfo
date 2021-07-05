import 'package:elsheikhzayedinfo/screens/business_locator_screen.dart';
import 'package:elsheikhzayedinfo/screens/business_management_screen.dart';
import 'package:elsheikhzayedinfo/screens/edit_profile_screen.dart';
import 'package:elsheikhzayedinfo/screens/inbox_screen.dart';
import 'package:elsheikhzayedinfo/screens/info_screen.dart';
import 'package:elsheikhzayedinfo/screens/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// Drawer
class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  int _radioGroupValue = 0;
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
            title: Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
            leading: Icon(Icons.home),
          ),
          ListTile(
            title: Text("Geo Stores"), // done
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => BusinessLocator()));
            },
            leading: Icon(Icons.local_activity),
          ),
          ListTile(
            title: Text("Orders"),
            onTap: () {},
            leading: Icon(Icons.shopping_cart),
          ),
          ListTile(
            title: Text("Edit Profile"), // done
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => EditProfile()));
            },
            leading: Icon(Icons.person),
          ),
          ListTile(
            title: Text("Manage Your Business"),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BusinessManagement()));
            },
            leading: Icon(Icons.business_center),
          ),
          ListTile(
            title: Text("Inbox"),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Inbox()));
            },
            leading: Icon(Icons.inbox),
          ),
          ListTile(
            title: Text("LogOut"),
            onTap: () {},
            leading: Icon(Icons.logout),
          ),
          ListTile(
            title: Text("Settings"),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SettingScreen()));
            },
            leading: Icon(Icons.settings),
          ),
          ListTile(
            title: Text("About Us"),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => InfoScreen()));
            },
            leading: Icon(Icons.info_outline),
          ),
          ListTile(
            title: Text("Language"),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  content: Container(
                    height: 150,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("English"),
                          leading: Radio(
                            value: null,
                            groupValue: _radioGroupValue,
                            onChanged: null,
                          ),
                        ),
                        ListTile(
                          title: Text("العربيه"),
                          leading: Radio(
                            value: null,
                            groupValue: _radioGroupValue,
                            onChanged: null,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            leading: Icon(Icons.language),
          ),
        ],
      ),
    );
  }
}

// Home AppBar with three icons

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
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.notifications_none,
          color: Colors.black,
        ),
      )
    ],
  );
}

// Screens AppBar

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

// Home widgets
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

// Screen Widgets
InkWell buildInkWell(BuildContext context, @required String imagename,
    @required Widget widgetName, String placename) {
  return InkWell(
    onTap: () {
      //Navigator.pushNamed(context, '/restaurant');
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => widgetName));
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
