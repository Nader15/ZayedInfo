import 'package:elsheikhzayedinfo/screens/business_locator_screen.dart';
import 'package:elsheikhzayedinfo/screens/business_management_screen.dart';
import 'package:elsheikhzayedinfo/screens/edit_profile_screen.dart';
import 'package:elsheikhzayedinfo/screens/inbox_screen.dart';
import 'package:elsheikhzayedinfo/screens/info_screen.dart';
import 'package:elsheikhzayedinfo/screens/setting_screen.dart';
import 'package:flutter/material.dart';
// Drawer
class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  int _radioGroupValue = 0;

  // late Locale _locale;
  //
  // changeLanguage(Locale locale) {
  //   setState(() {
  //     _locale = locale;
  //   });
  // }


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
                            value: 2,
                            groupValue: _radioGroupValue,
                            onChanged: (value){
                              setState(() {
                                // _radioGroupValue= value;
                              });
                            },//EasyLocalization.of(context)!.locale=('ar','en'),
                          ),
                        ),
                        ListTile(
                          title: Text("العربيه"),
                          leading: Radio(
                            value: 0,
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