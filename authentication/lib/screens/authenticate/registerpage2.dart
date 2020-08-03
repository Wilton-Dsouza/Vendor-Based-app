import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:image_picker/image_picker.dart';
import 'package:login_app/screens/authenticate/registerpage3.dart';

class RegisterPage2 extends StatefulWidget {
  var details = new Map();
  RegisterPage2({this.details});
  _RegisterPage2State createState() => _RegisterPage2State();
}

class _RegisterPage2State extends State<RegisterPage2> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    var image = await picker.getImage(source: ImageSource.gallery);

    setState(() {
//      _image = File(image.path);
      _image = File(image.path);
      print('Image Path: $_image');
    });
  }

  Future uploadPicture() async {
    //to get only the file name instead of the whole path for readibility
    String imageFileName =
        basename(_image.path); //basename is from path.dart(built-in)
    StorageReference firebaseStorageReference = FirebaseStorage.instance
        .ref()
        .child('user1_images'); //filename uploaded
    StorageUploadTask uploadTask = firebaseStorageReference
        .child(imageFileName)
        .putFile(
            _image); //file(in this case, image) uploaded under the filename
    StorageTaskSnapshot taskSnapshot =
        await uploadTask.onComplete; //to check whether the upload is complete
    setState(() {
      print('Picture Uploaded');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF811a41),
      body: Center(
        child: Card(
          child: ListView(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: IconButton(
                  alignment: Alignment.topLeft,
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 140),
                child: Align(
                    child: Text(
                  'License Information',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 240),
                child: Align(
                    child: Text(
                  'Shop Licence',
                  style: TextStyle(fontSize: 20),
                )),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: Container(
                      width: 170,
                      height: 150,
                      child: RaisedButton(
                          onPressed: getImage,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          color: Color(0xFF811a41),
                          child: Center(
                            child: (_image != null)
                                ? Image.file(_image)
                                : Icon(
                                    Icons.camera_alt,
                                    size: 40.0,
                                    color: Colors.white,
                                  ),
                          )),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: (_image != null)
                            ? null
                            : Text('(Click here to add Image)'),
                      )
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 240),
                child: Align(
                    child: Text(
                  'FSSAI License',
                  style: TextStyle(fontSize: 20),
                )),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 20),
                    child: Container(
                      width: 170,
                      height: 150,
                      child: RaisedButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          color: Color(0xFF811a41),
                          child: Center(
                            child: Icon(
                              Icons.camera_alt,
                              size: 40.0,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text('(Click here to add Image)'),
                      )
                    ],
                  )
                ],
              ),
              Container(
                height: 70,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 18,
                    left: 20,
                    right: 20,
                  ),
                  child: TextField(
                    obscureText: false,
                    cursorColor: new Color(0xFF811a41),
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: new Color(0xFF811a41))),
                        border: OutlineInputBorder(),
                        labelText: 'GST/PAN',
                        labelStyle: TextStyle(color: Color(0xFF811a41))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(150, 25, 150, 0.0),
                child: RaisedButton(
                  color: Color(0xFF811a41),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onPressed: uploadPicture,
//                  () {
//                    Navigator.push(
//                        context,
//                        MaterialPageRoute(
//                          builder: (context) => RegisterPage3(
//                            details: widget.details,
//                          ),
//                        ));
//                  },
                  child: const Text('Next',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
