import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoginPressed = false;
  bool isCreateAccountPressed = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/sh.jpg"),
                        fit: BoxFit.fill
                    ),
                  ),
                ),
                Center(
                  child:  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Form(
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Email or username",
                                ),
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Password",
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isCreateAccountPressed=true;
                              isLoginPressed = !isLoginPressed;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
                            height: MediaQuery.of(context).size.height / 16,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: isLoginPressed ? Colors.deepOrange : Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.deepOrange)),
                            child: Text(
                              " Login ",
                              style: TextStyle(
                                color: isLoginPressed ? Colors.white : Colors.deepOrange,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              // isLoginPressed =true;
                              isCreateAccountPressed = !isCreateAccountPressed;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 15),
                            height: MediaQuery.of(context).size.height / 16,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: isCreateAccountPressed ? Colors.deepOrange:Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.deepOrange),
                            ),
                            child: Text(
                              "create account",
                              style: TextStyle(
                                color: isCreateAccountPressed ?  Colors.white: Colors.deepOrange,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "forget password ?",
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ) ,
                ),
              ],
            ),

          ],
        ),
      )),
    );
  }
}