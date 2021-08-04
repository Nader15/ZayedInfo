import 'package:flutter/material.dart';


// Screen Widgets




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


