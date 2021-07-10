import 'package:elsheikhzayedinfo/component/widgets.dart';
import 'package:elsheikhzayedinfo/screens/messages_screen.dart';
import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  TextStyle _titleStyle = TextStyle(
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildScreensAppBar(
        "El Sheikh Zayed info",
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                alignment: Alignment.topCenter,
                height: MediaQuery.of(context).size.height - 130,
                child: ListView.builder(
//                    shrinkWrap: true,
//                    physics: ScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, indeex) {
                      return InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MessageScreen()));
                        },
                        child: ListTile(
                          leading: CircleAvatar(
                            child: Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                            backgroundColor: Colors.black12,
                          ),
                          trailing: Text("01:05"),
                          title: Text(
                            "El Shikh Zayed ",
                            style: _titleStyle,
                          ),
                          subtitle: Text("شكرا لتنزيلكم تطبيق الشيخ زايد"),
                        ),
                      );
                    })),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(hintText: "Send a message"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Container(
//            height: MediaQuery.of(context).size.height / 2,
//            child: Column(
//              //mainAxisAlignment: MainAxisAlignment.end,
//              children: [
//                TextFormField(
//                  decoration: InputDecoration(hintText: "Send a message"),
//                ),
//              ],
//            ),
//          ),
