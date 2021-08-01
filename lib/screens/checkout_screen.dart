import 'package:elsheikhzayedinfo/screens/google_map.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:steps_indicator/steps_indicator.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  _CheckOutScreenState createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  Color deepOrange = Colors.deepOrange;

  bool isPaymentPressed = false;

  Widget checkoutContainer() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StepsIndicator(
            selectedStep: 1,
            nbSteps: 3,
            isHorizontal: true,
            selectedStepBorderSize: 25,
            unselectedStepBorderSize: 25,
            doneStepSize: 25,
            selectedStepSize: 25,
            unselectedStepSize: 25,
            selectedStepColorIn: deepOrange,
            selectedStepColorOut: deepOrange,
            unselectedStepColorIn: Colors.grey,
            unselectedStepColorOut: Colors.grey,
            doneLineColor: deepOrange,
            undoneLineColor: Colors.grey,
            doneLineThickness: 5,
            undoneLineThickness: 5,
            doneStepColor: deepOrange,
            lineLength: 100,
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Details", style: TextStyle(color: deepOrange)),
              Text("Confirm", style: TextStyle(color: deepOrange)),
              Text("Payment", style: TextStyle(color: deepOrange)),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          //Text("ORDER DETAILS"),
        ],
      ),
    );
  }

  Widget detailsContainer() {
    return Container(
      child: Column(
        children: [
          Text("ORDER DETAILS"),
          TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                hintText: "Full name*",
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: deepOrange))),
          ),
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                hintText: "phone*",
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: deepOrange))),
          ),
          TextFormField(
            keyboardType: TextInputType.streetAddress,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(Icons.my_location_rounded),
                color: deepOrange,
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MapScreen()));
                },
              ),
              hintText: "Delivery to*",
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: deepOrange),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text("*Required Field")],
          ),
        ],
      ),
    );
  }

  Widget confirmContainer() {
    return Container(
      // confirm container
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("ORDER DETAILS"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Phone",
                style: TextStyle(fontSize: 20),
              ),
              Text("data"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Delivery to",
                style: TextStyle(fontSize: 20),
              ),
              Text("data"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Full name",
                style: TextStyle(fontSize: 20),
              ),
              Text("data"),
            ],
          ),
          Divider(
            color: Colors.grey,
            thickness: 3,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 25,
          ),
          Text(
            "PRODUCT ORDER",
            style: TextStyle(fontSize: 20),
          ),
          whenAddingToCheckOrder(),
          Divider(
            color: Colors.grey,
            thickness: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "ORDER TOTAL",
                style: TextStyle(fontSize: 20),
              ),
              Text("data"),
            ],
          ),
        ],
      ),
    );
  }


  Widget whenAddingToCheckOrder() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 4,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("images/sh.jpg"),
                  )),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width / 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "test",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Qty : 1",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "21.0",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }  // using inside confirmContainer


  Widget paymentContainer() {
    return InkWell(
      onTap: () {
        setState(() {
          isPaymentPressed = !isPaymentPressed;
        });
      },
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 5,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: isPaymentPressed ? Colors.deepPurple : Colors.grey,
                width: 3,
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 4,
                  child: Image.asset("images/cash.jpg"),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cash on Delivery",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text("Pay when you receive your item(s)"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 50,
            child: Icon(
              Icons.check_circle_outline,
              color: isPaymentPressed ? Colors.deepPurple : Colors.grey,
            ),
          )
        ],
      ),
    );
  }

  Widget totalPriceContainer()
  {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      padding: EdgeInsets.all(20),
      child: isPaymentPressed
          ? Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: [
              Text("Subtotal"),
              Text("500.0"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text("0.0")],
          ),
          Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: [
              Text("TOTAL"),
              Text("500.0"),
            ],
          ),
        ],
      )
          : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Checkout",
          style: TextStyle(color: Colors.deepOrange),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.close),
          color: deepOrange,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height / 1.1,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    checkoutContainer(),
                    detailsContainer(),
                   // confirmContainer()

                  ],
                ),
              ),
              Container(
                color: deepOrange,
                height: MediaQuery.of(context).size.height/16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
