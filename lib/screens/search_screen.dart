import 'package:elsheikhzayedinfo/component/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Color c1 = Colors.grey;
  Color c2 = Colors.orange;
  // bool _hasBeenPressed = false;
  double _value = 0.0;

  //List<bool> isSelected = List.generate(10, (index) => false);

  int tappedIndex = -1;

  @override
  void initState() {
    super.initState();
    tappedIndex = -1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildScreensAppBar(
        "Search",
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Location:",
                        style: TextStyle(fontSize: 20),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Current Location",
                          style: TextStyle(color: Colors.orange, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Select category",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: ListView.builder(
                        padding: EdgeInsets.all(5),
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: Container(
                              margin: EdgeInsets.only(right: 5),
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "ALL CATEGORIES $index",
                                style: TextStyle(
                                  // color: isSelected[index] ? c2 : c1,
                                  color: tappedIndex == index ? c2 : c1,
                                  fontSize: 15,
                                ),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  //color: isSelected[index] ? c2 : c1,
                                  color: tappedIndex == index ? c2 : c1,
                                ),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                tappedIndex = index;
                                // isSelected[index] = !isSelected[index];
                              });
                            },
                          );
                        }),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      decoration:
                          InputDecoration(hintText: "Write Name, Address,City"),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Radius: ${(_value).round()} Km",
                          style: TextStyle(fontSize: 20),
                        ),
                        Slider(
                          inactiveColor: Colors.black12,
                          activeColor: Colors.orange,
                          value: _value,
                          onChanged: (double val) {
                            setState(() {
                              _value = val;
                            });
                          },
                          max: 100,
                          min: 0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.orange),
                    ),
                    onPressed: () {},
                    child: Text("SEARCH"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//                                for (int i = 0; i < isSelected.length; i++) {
//                                  if (i == index) {
//                                    isSelected[index] = true;
//                                    print(isSelected[index]);
//                                  } else
//                                    isSelected[index] = false;
//                                  print(isSelected[index]);
//                                }
