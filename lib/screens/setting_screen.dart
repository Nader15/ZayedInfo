import 'package:elsheikhzayedinfo/component/widgets.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;

  TextStyle _titleStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildScreensAppBar("Setting"),
      body: Container(
        padding: EdgeInsets.all(5),
        height: MediaQuery.of(context).size.height,
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            ListTile(
              title: Text(
                "NOTIFICATIONS",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Production notification",
                style: _titleStyle,
              ),
              subtitle: Text("Receive a special products notification"),
              trailing: Checkbox(
                fillColor: MaterialStateProperty.all<Color>(Colors.orange),
                value: this.value1,
                onChanged: (bool? value) {
                  setState(() {
                    this.value1 = value!;
                  });
                },
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: Text(
                "Nearby stores notifications",
                style: _titleStyle,
              ),
              subtitle:
                  Text("Receive notification when there is a store near you"),
              trailing: Checkbox(
                fillColor: MaterialStateProperty.all<Color>(Colors.orange),
                value: this.value2,
                onChanged: (bool? value) {
                  setState(() {
                    this.value2 = value!;
                  });
                },
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: Text(
                "Massenger notification",
                style: _titleStyle,
              ),
              subtitle: Text("Receive notification when there is new message"),
              trailing: Checkbox(
                fillColor: MaterialStateProperty.all<Color>(Colors.orange),
                value: this.value3,
                onChanged: (bool? value) {
                  setState(() {
                    this.value3 = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: Text(
                "APPLICATION",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  "Distance Unit",
                  style: _titleStyle,
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  "Terms of use",
                  style: _titleStyle,
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  "Privacy Policy",
                  style: _titleStyle,
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: Text(
                "Version of application",
                style: _titleStyle,
              ),
              subtitle: Text("2.1"),
            ),
            Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
