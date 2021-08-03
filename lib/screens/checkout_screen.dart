import 'package:elsheikhzayedinfo/component/global.dart';
import 'package:elsheikhzayedinfo/models/cart_item.dart';
import 'package:elsheikhzayedinfo/screens/cart_screen.dart';
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


  final GlobalKey <FormState> _formKey = GlobalKey();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  String Name = "";
  Color deepOrange = Colors.deepOrange;
  int initialStep = 0;
  bool isPaymentPressed = false;

  final List<CartItem> cartList = [];

  Widget checkoutContainer() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StepsIndicator(
            selectedStep: initialStep,
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
            height: MediaQuery
                .of(context)
                .size
                .height / 20,
          ),
        ],
      ),
    );
  }

  Widget detailsContainer() {
    return Container(
      child: Column(
        children: [
          Text("ORDER DETAILS"),
          Form(
            key:_formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return " enter your name ";
                    }
                  },
                  onSaved:(val) {
                    Name = val!;
                  },
                  decoration: InputDecoration(
                      hintText: "Full name*",
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: deepOrange))),
                ),
                TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      hintText: "phone*",
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: deepOrange))),
                ),
                TextFormField(
                  controller: addressController,
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(Icons.my_location_rounded),
                      color: deepOrange,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => MapScreen()));
                      },
                    ),
                    hintText: "Delivery to*",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: deepOrange),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height / 20,
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
      height: MediaQuery
          .of(context)
          .size
          .height / 1.7,
      // confirm container
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
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
                Text(phoneController.text),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery to",
                  style: TextStyle(fontSize: 20),
                ),
                Text(addressController.text),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Full name",
                  style: TextStyle(fontSize: 20),
                ),
                Text(nameController.text),
              ],
            ),
            Divider(
              color: Colors.grey,
              thickness: 3,
            ),
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 25,
            ),
            Text(
              "PRODUCT ORDER",
              style: TextStyle(fontSize: 20),
            ),
            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 6.5,
              child: ListView.builder(
                  padding: const EdgeInsets.all(10),
                  itemCount: 3,
                  itemBuilder: (BuildContext context, index) =>
                      whenAddingToCheckOrder()),
            ),
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
                Text("$totalPrice"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget whenAddingToCheckOrder() {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: MediaQuery
          .of(context)
          .size
          .width,
      height: MediaQuery
          .of(context)
          .size
          .height / 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width / 4,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("images/sh.jpg"),
                      )),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery
                      .of(context)
                      .size
                      .width / 4,
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
                        "Qty : $itemsCount",
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
            width: MediaQuery
                .of(context)
                .size
                .width / 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$totalPrice",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  } // using inside confirmContainer

  Widget paymentContainer() {
    return Column(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isPaymentPressed = !isPaymentPressed;
            });
          },
          child: Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 5,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: isPaymentPressed
                        ? Color(0xff306030)
                        : Color(0xff78866b),
                    width: 3,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 4,
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
                child: isPaymentPressed
                    ? Icon(
                  Icons.check_circle,
                  color: Color(0xff306030),
                )
                    : Icon(Icons.check_circle_outline),
              ),
            ],
          ),
        ),
        totalPriceContainer(),
      ],
    );
  }

  Widget totalPriceContainer() {
    return Container(
      height: MediaQuery
          .of(context)
          .size
          .height / 5,
      padding: EdgeInsets.all(20),
      child: isPaymentPressed
          ? Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Subtotal"),
              Text("$totalPrice"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text("0.0")],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("TOTAL"),
              Text("$totalPrice"),
            ],
          ),
        ],
      )
          : null,
    );
  }

  Widget successContainer() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Center(
        child: Column(
          children: [
            Icon(
              Icons.check_circle,
              color: Color(0xff306030),
              size: 180,
            ),
            Text(
              "Your order has been sent successfully!",
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }

  Widget nextButton() {
    return Container(
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
              ),
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 12,
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 6,
              child: Icon(Icons.arrow_back_ios),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  _submit();
                  initialStep++;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: deepOrange,
                  borderRadius:
                  BorderRadius.only(topRight: Radius.circular(10)),
                ),
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      initialStep == 2 ? "Confirm Payment" : "Next",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget doneButton() {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => CartScreen(cartList: cartList)));
      },
      child: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height / 12,
        color: Color(0xff306030),
        child: Center(
          child: Text(
            "Done",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }

  paymentSteps(int i) {
    if (initialStep == 0) {
      return detailsContainer();
    } else if (initialStep == 1) {
      return confirmContainer();
    } else if (initialStep == 2) {
      return paymentContainer();
    } else {
      return successContainer();
    }
  }

  buttonManage(int i) {
    if (initialStep == 0 || initialStep == 1 || initialStep == 2) {
      return nextButton();
    } else if (initialStep == 3) {
      return doneButton();
    }
  }
  void _submit(){
    if(  _formKey.currentState!.validate()){return;}
    _formKey.currentState!.save();
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 1.25,
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    checkoutContainer(),
                    paymentSteps(initialStep),
                  ],
                ),
              ),
              buttonManage(initialStep),
            ],
          ),
        ),
      ),
    );
  }
}
