import 'package:elsheikhzayedinfo/component/widgets.dart';
import 'package:elsheikhzayedinfo/screens/places_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookMarkScreen extends StatefulWidget {
  @override
  _BookMarkScreenState createState() => _BookMarkScreenState();
}

class _BookMarkScreenState extends State<BookMarkScreen> {
  TextStyle _style = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  Widget whenNoBookmark() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/sh.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "No Feed, Yet",
              style: _style,
            ),
            Text(
              "Try a refresh the page",
              style: _style,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Reload"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEFEF),
      appBar: BuildScreensAppBar("Bookmark"),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (BuildContext context,index)=>
            InkWell(
              onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PlaceScreen()));},
              child: Container(
                padding: EdgeInsets.all(5),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 6,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/elnil.png'),
                          fit: BoxFit.fill,
                        ),
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: MediaQuery.of(context).size.width / 4,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(left: 5),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nile Scan & Labs",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.deepOrange,
                              ),
                            ),
                            Text(
                              "يضم مركز النيل للاشعه و التحاليل نخبه من أساتذه و اعضاء هيئه التدريس بالقصر العينى و معهد الأورام ",
                              style: TextStyle(fontSize: 15),
                              // overflow: TextOverflow.clip,
                              // softWrap: true,
                              textAlign: TextAlign.end,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

      ),
    );
  }
}
