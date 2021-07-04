import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.cancel_outlined),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.orange,
        title: Text(
          "Login-El Shikh Zayed info  ",
          style: TextStyle(color: Colors.white),
        ),
        // actions: [],
      ),
      body: Builder(builder: (BuildContext context) {
        return WebView(
          initialUrl: 'https://flutter.dev',
        );
      }),
    );
  }
}
