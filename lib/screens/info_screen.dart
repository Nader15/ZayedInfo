import 'package:elsheikhzayedinfo/component/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  TextStyle _titleStyle = TextStyle(
    fontSize: 20,
    color: Colors.black54,
    fontWeight: FontWeight.bold,
  );

  TextStyle _subtitleStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w800,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEFEF),

      appBar: BuildScreensAppBar("El Sheikh Zayed info"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/deal.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: Text(
                  "Description",
                  style: _titleStyle,
                ),
                subtitle: Text(
                  "El Sheikh Zayed info 2.0 is an innovative"
                  "local business search app with an "
                  "intelligent search functionality  that can"
                  "help you find different businesses in an "
                  "area easily",
                  style: _subtitleStyle,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: Text(
                  "Mail",
                  style: _titleStyle,
                ),
                subtitle: Text(
                  "info@elshikhzayed.info",
                  style: _subtitleStyle,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Phone",
                      style: _titleStyle,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "01030230060",
                      style: _subtitleStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
