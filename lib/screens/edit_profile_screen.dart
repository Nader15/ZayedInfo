import 'dart:io';
import 'package:elsheikhzayedinfo/component/colors.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:elsheikhzayedinfo/ui/appBar.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  final GlobalKey <FormState> _formKey = GlobalKey();
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final userNameController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
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
  void _validateInputs() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    } else {
      setState(() {
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBackGround,
      appBar: buildScreensAppBar("Edit Profile"),
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
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "Enter your Email",
                          hintStyle: _hintStyle,
                        ),
                        validator: (value) {
                          if (value!.isEmpty || !value.contains('@'))
                            return "Invalid email";
                        },
                        keyboardType: TextInputType.emailAddress,
                      ),
                      TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          hintText: "Full name",
                          hintStyle: _hintStyle,
                        ),
                        keyboardType: TextInputType.name,
                        validator: (value) {
                          if (value!.isEmpty || value.length < 3 )
                            return "enter your name";
                        },
                      ),
                      TextFormField(
                        controller: userNameController,
                        decoration: InputDecoration(
                          hintText: "User name",
                          hintStyle: _hintStyle,
                        ),
                        keyboardType: TextInputType.name,
                        validator: (value) {
                          if (value!.isEmpty || value.length < 3)
                            return "enter your user name";
                        },
                      ),
                      TextFormField(
                        controller: phoneController,
                        decoration: InputDecoration(
                          hintText: "Phone number",
                          hintStyle: _hintStyle,
                        ),
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value!.isEmpty || value.length < 11)
                            return "enter valid phone number";
                        },
                      ),
                      TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: _hintStyle,
                        ),
                        keyboardType: TextInputType.number,
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty || value.length < 8 )
                            return "enter valid password";
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width - 10,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _validateInputs();
                        if (_formKey.currentState!.validate()) {return;}
                      });
                    },
                    child: Text(
                      "save",
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xffff4500)),
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
