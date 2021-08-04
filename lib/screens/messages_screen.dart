import 'package:elsheikhzayedinfo/component/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:elsheikhzayedinfo/ui/appBar.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEFEF),
      appBar: buildScreensAppBar("El Shikh Zayed \n @admin"),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.all(5),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(15),
                child: Text(
                  "شكرا لتنزيلكم تطبيق الشيخ زايد انفو "
                  "برجاء العلم انه يمكنكم مراسلتنا عن طريق هذه المحادثه"
                  "و سوف نقوم بالرد عليها فورا",
                  textAlign: TextAlign.right,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Text(
                "05 july 2021 01:05",
              ),
            ],
          ),
        ),

        Container(
          color: Colors.white,
          child: ListTile(
            title: TextFormField(
              decoration: InputDecoration(
                hintText: "Send message",
                fillColor: Colors.white,
              ),
            ),
            trailing: Container(
              color: Colors.deepOrange,
              child: IconButton(
                onPressed: (){},
                  icon : Icon(Icons.send),
                color: Colors.white,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
