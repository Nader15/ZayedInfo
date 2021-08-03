import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:share/share.dart';


class BusinessManagement extends StatefulWidget {
  @override
  _BusinessManagementState createState() => _BusinessManagementState();
}

class _BusinessManagementState extends State<BusinessManagement> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }
  void onSelected(BuildContext context , int item )
  {
    switch(item)
    {
      case 0 : Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BusinessManagement()));
      break;
      case 1 :Share.share('https://flutter.dev');
      break;
      case 2 : Share.share('https://flutter.dev');
      break;

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.orange,
        title: Text(
          "Login-El Shikh Zayed info  ",
          style: TextStyle(color: Colors.white),
        ),
         actions: [
           PopupMenuButton<int>(
             onSelected: (item)=>onSelected(context,item),
             itemBuilder: (context)=>[
             PopupMenuItem<int>(value: 0,child: Text("Refresh"),),
             PopupMenuItem<int>(value: 1,child: Text("Share via"),),
             PopupMenuItem<int>(value: 2,child: Text("Copy Link"),),
           ],),
         ],
      ),
      body: Builder(builder: (BuildContext context) {
        return WebView(
          initialUrl: 'https://flutter.dev',
        );
      }),
    );
  }
}
