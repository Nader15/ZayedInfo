import 'package:elsheikhzayedinfo/component/widgets.dart';
import 'package:elsheikhzayedinfo/screens/messages_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';
import 'package:url_launcher/url_launcher.dart';

import 'google_map.dart';

class PlaceScreen extends StatefulWidget {
  const PlaceScreen({Key? key}) : super(key: key);

  @override
  _PlaceScreenState createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {
  void luncheWhatsApp({@required number, @required message}) async {
    String url = "whatsapp://send?phone$number&text=$message";
    await canLaunch(url) ? launch(url) : print("can't open whatsapp");
  }

  // openFaceBook(String link){
  //   final url =
  //       "web://$link";
  //   if ( UrlLauncher.canLaunch(url)) async {
  //   await UrlLauncher.launch(url,forceSafariVC: false);
  //   } else {
  //   throw 'Could not launch $url';
  //   }
  // }

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  static const int c = 0xFFFF0000;

  Widget buildOutlinedButton(IconData ic, VoidCallback? f) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: 5),
        child: OutlinedButton(
          onPressed: f,
          child: Icon(
            ic,
            color: Colors.orange,
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

  Widget buildcontainer(String label) {
    return Expanded(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEFEFEF),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(alignment: AlignmentDirectional.topCenter, children: [
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
                Container(
                  child: ListTile(
                    title: Text(
                      "Nile Scan & Labs",
                      style: TextStyle(color: Colors.black),
                    ),
                    leading: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    trailing: SizedBox(
                      width: MediaQuery.of(context).size.width / 4,
                      child: Row(
                        children: [
                          Icon(
                            Icons.bookmark_border,
                            color: Colors.black,
                          ),
                          Icon(
                            Icons.bookmark_border,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
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
                    buildcontainer("PRODUCT "),
                    buildcontainer("REVIEWS"),
                    buildcontainer("GALLERY"),
                  ],
                ),
              ),
              Container(
                height: 50,
                child: Text("No Products found"),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Column(
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
                        buildOutlinedButton(
                            Icons.blur_circular_outlined,
                            () => Scaffold(body:
                                    Builder(builder: (BuildContext context) {
                                  return WebView(
                                    initialUrl: 'http://nilescanandlabs.net/http://nilescanandlabs.net/',
                                  );
                                }))),
                        buildOutlinedButton(Icons.phone, () {
                          luncheWhatsApp(
                              number: "01121911432", message: "Hello");
                        }),
                        buildOutlinedButton(
                          Icons.facebook,
                          () => WebView(
                            initialUrl: 'https://flutter.dev',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Nile Scan & Labs",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "82 m",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: Text(
                            " يضم مركز النيل للاشعه و التحاليل نخبه من اساتذه و اعضاء \n"
                            " هيئه االتدريس بالقصر العينى و معهد الاورام ليضمنوا أفضل \n"
                            " عنايه لمرضانا. النيل للاشعه و التحاليل أفضل مركز للاشعه \n "
                            "و التحاليل فى مصر أكثر من عشرون عاما فى خدمه مرضانا \n "
                            "و 6 فروع تجعلنا الرواد فى مجال عملنا \n ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.right,
                          ),
                        )
                      ],
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
                    Icon(
                      Icons.location_on,
                      color: Colors.deepOrange,
                    ),
                    Text(
                        "الشيخ زايد السادس من اكتوبر الجيزه بجوار \n مستشفي الشيخ زايد التخصصي"),
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
