import 'dart:io';

import 'package:elsheikhzayedinfo/component/widgets.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  static const TextStyle _hintStyle = TextStyle(
    fontSize: 20,
    color: Colors.black54,
  );

  File? _image;
  final picker = ImagePicker();

  Future getImage(ImageSource scr) async {
    final _pickedFile = await picker.getImage(source: scr);
    setState(() {
      if (_pickedFile != null) {
        _image = File(_pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildScreensAppBar("Edit Profile"),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  maxRadius: 50,
                  child: IconButton(
                    color: Colors.white,
                    onPressed: () {
                      getImage(ImageSource.gallery);
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.person_add,
                      size: 30,
                    ),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter your Email",
                    hintStyle: _hintStyle,
                  ),
                  validator: (val) {
                    if (val!.isEmpty || !val.contains('@'))
                      return "Invalid email";
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Full name",
                    hintStyle: _hintStyle,
                  ),
                  keyboardType: TextInputType.name,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "User name",
                    hintStyle: _hintStyle,
                  ),
                  keyboardType: TextInputType.name,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Phone number",
                    hintStyle: _hintStyle,
                  ),
                  keyboardType: TextInputType.phone,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: _hintStyle,
                  ),
                  keyboardType: TextInputType.number,
                  obscureText: true,
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width - 10,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: Text(
                      "save",
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.orange),
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
