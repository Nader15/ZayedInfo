import 'package:elsheikhzayedinfo/screens/cart_screen.dart';
import 'package:elsheikhzayedinfo/screens/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


// Screens AppBar

AppBar BuildScreensAppBar(@required String pageTitle) {
  return AppBar(
    leading: Builder(
      builder: (context) => IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    ),
    backgroundColor: Colors.white,
    title: Text(
      pageTitle,
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  List imglist = [
    'images/first.jpg',
    'images/second.jpg',
    'images/third.jpeg',
    //"images/fourth.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: CarouselSlider.builder(
        itemCount: imglist.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              imglist[index],
              fit: BoxFit.fill,
            ),
          );
        },
        options: CarouselOptions(
          height: 180,
          initialPage: 0,
        ),
      ),
    );
  }
}


// Screen Widgets
InkWell buildInkWell(BuildContext context, @required String imagename,
    @required Widget widgetName, String placename) {
  return InkWell(
    onTap: () {
      //Navigator.pushNamed(context, '/restaurant');
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => widgetName));
    },
    child: Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 4,
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(imagename),
            ),
          ),
        ),
        Text(
          placename,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}



Future  buildDialog(BuildContext context, String number)async{
  return await showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      content: Container(
        height: 100,
        child: Column(
          mainAxisAlignment:
          MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Call"),
            Text(number),
          ],
        ),
      ),
    ),
  );
}


