import 'package:elsheikhzayedinfo/component/widgets.dart';
import 'package:elsheikhzayedinfo/screens/messages_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'google_map.dart';

class PlaceScreen extends StatefulWidget {
  const PlaceScreen({Key? key}) : super(key: key);

  @override
  _PlaceScreenState createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {
  Widget _widget = Container();
  bool b = true;
  bool isPressed = false;

  static const int c = 0xFFFF0000;

// build massege , phone , ... buttons
  Widget buildOutlinedButton(IconData ic, VoidCallback? f) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: 5),
        child: OutlinedButton(
          onPressed: f,
          child: Icon(
            ic,
            color: Colors.deepOrange,
          ),
          style: ButtonStyle(
            side: MaterialStateProperty.all<BorderSide>(
                BorderSide(color: const Color(c))),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
        ),
      ),
    );
  }

// build product , reviews , gallary buttons
  Widget buildcontainer(String label, VoidCallback? f) {
    return Expanded(
      child: InkWell(
        onTap: f,
        child: Container(
          margin: EdgeInsets.only(right: 5),
          padding: EdgeInsets.all(10),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.deepOrange,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Nile Scan & Labs",
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
            color: Colors.black,
          ),
          actions: [
            IconButton(
              icon: isPressed
                  ? Icon(Icons.bookmark_border)
                  : Icon(Icons.bookmark),
              color: Colors.black,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.share),
              color: Colors.black,
              onPressed: () {},
            ),
          ],
        ),
       // backgroundColor: Color(0xffEFEFEF),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/elnil.png'),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 8,
                      //  padding: const EdgeInsets.all(30),
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('images/clinics.jpg'),
                        ),
                      ),
                    ),
                    Text(
                      "Clinics",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildcontainer("PRODUCT ", () {
                      setState(() {
                        b = true;
                        _widget = Text(
                          "No products found",
                          style: TextStyle(fontSize: 20),
                        );
                      });
                    }),
                    buildcontainer("REVIEWS", () {
                      setState(() {
                        b = true;
                        _widget = Expanded(
                          child: Container(
                            //  padding: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width - 20,
                            height: 70,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "No reviews",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(20),
                                    width:
                                        MediaQuery.of(context).size.width - 20,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Add Review",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.deepOrange),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                    }),
                    buildcontainer("GALLERY", () {
                      setState(() {
                        b = true;
                        _widget = ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) => (Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Image.asset('images/elnil.png'),
                          )),
                        );
                      });
                    }),
                  ],
                ),
              ),
              Container(
                height: 100,
                child: _widget,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        buildOutlinedButton(Icons.messenger, () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MessageScreen()));
                        }),
                        buildOutlinedButton(Icons.phone, () {
                          buildDialog(context, "00201289993333");
                        }),
                        buildOutlinedButton(Icons.directions, () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MapScreen(),
                          ));
                        }),
                      ],
                    ),
                    Row(
                      children: [
                        buildOutlinedButton(Icons.language,
                            () => launch('http://nilescanandlabs.net/')),
                        buildOutlinedButton(
                          Icons.phone,
                          () => launch(
                              'https://api.whatsapp.com/send?phone=27768483016 '),
                        ),
                        buildOutlinedButton(
                          Icons.facebook,
                          () => launch(
                              'https://www.facebook.com/nilescanandlabs/'),
                        )
                      ],
                    ),
                    Text(
                      "Nile Scan & Labs",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "82 m",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " يضم مركز النيل للاشعه و التحاليل نخبه من اساتذه و اعضاء "
                      " هيئه االتدريس بالقصر العينى و معهد الاورام ليضمنوا أفضل "
                      " عنايه لمرضانا. النيل للاشعه و التحاليل أفضل مركز للاشعه  "
                      "و التحاليل فى مصر أكثر من عشرون عاما فى خدمه مرضانا  "
                      "و 6 فروع تجعلنا الرواد فى مجال عملنا  ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Icon(
                        Icons.location_on,
                        color: Colors.deepOrange,
                      ),
                      width: MediaQuery.of(context).size.width / 10,
                    ),
                    Expanded(
                      child: Container(
                        child: Text(
                          "الشيخ زايد السادس من اكتوبر الجيزه بجوار مستشفي الشيخ زايد التخصصي",
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 4,
                child: MapScreen(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
