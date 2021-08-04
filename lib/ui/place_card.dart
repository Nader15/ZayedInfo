import 'package:elsheikhzayedinfo/models/home_models/place_item.dart';
import 'package:flutter/material.dart';

TextStyle _s = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
Card buildPlaceCard(Places place) {
  return Card(
    elevation: 5,
    child: InkWell(
      onTap: place.yourNavigation,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Builder(builder: (BuildContext context)=>Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 4,
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(place.imageName),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                width: MediaQuery
                    .of(context)
                    .size
                    .width - 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Text(
                          "0(${place.rate})",
                          style: _s,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            place.category,
                            style: _s,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "${place.distance} Km",
                            style: _s,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Text(
              place.placeName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Row(
              children: [
                Icon(Icons.add_location),
                Text(
                  place.address,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
