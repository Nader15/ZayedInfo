import 'dart:io';
import 'package:elsheikhzayedinfo/models/cart_item.dart';
import 'package:elsheikhzayedinfo/screens/business_locator_screen.dart';
import 'package:elsheikhzayedinfo/screens/business_management_screen.dart';
import 'package:elsheikhzayedinfo/screens/cart_screen.dart';
import 'package:elsheikhzayedinfo/screens/edit_profile_screen.dart';
import 'package:elsheikhzayedinfo/screens/inbox_screen.dart';
import 'package:elsheikhzayedinfo/screens/info_screen.dart';
import 'package:elsheikhzayedinfo/screens/login_screen.dart';
import 'package:elsheikhzayedinfo/screens/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// Drawer
class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  int _radioGroupValue = 0;
  final List<CartItem> cartList = [];

  File? _image;
  final picker = ImagePicker();

  Future getImage(ImageSource scr) async {
    final _pickedFile = await picker.getImage(source: scr);
    setState(() {
      if (_pickedFile != null) {
        _image = File(_pickedFile.path);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Color(0xffff4f00)),
            child: ListTile(
              title: CircleAvatar(
                backgroundColor: Color(0xff989898),
                maxRadius: 50,
                child: IconButton(
                  icon: Icon(Icons.account_circle),
                  color: Color(0xff848482),
                  onPressed: () {
                    getImage(ImageSource.gallery);
                    Navigator.of(context).pop();
                  },
                  iconSize: 85,
                ),
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
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => LoginScreen()));
                      },
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
                        "Create Account",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => EditProfile()));
                      },
                    ),
                  ],
                ),
              ),
            ),
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
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => CartScreen(cartList: cartList)));
            },
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
                            onChanged: (value) {
                              setState(() {
                                // _radioGroupValue= value;
                              });
                            }, //EasyLocalization.of(context)!.locale=('ar','en'),
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
