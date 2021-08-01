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
      backgroundColor: Color(0xffEFEFEF),

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
                    itemCount: 10,
                    itemBuilder: (context, index) {
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


