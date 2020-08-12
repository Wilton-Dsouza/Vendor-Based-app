import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:login_app/models/user.dart';
import 'package:login_app/screens/wrapper.dart';
import 'package:login_app/services/auth.dart';
import 'package:login_app/services/storage.dart';
import 'package:login_app/shared/loading.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';

class RegisterPage4 extends StatefulWidget {
  var details = new Map();
  RegisterPage4({this.details});

  _RegisterPage4 createState() => _RegisterPage4();
}

class _RegisterPage4 extends State<RegisterPage4> {
  bool loading = false;
  String _error = '';
  final AuthService _auth = AuthService();
  final Storage _storage = Storage();

  final picker = ImagePicker();

  Future getImage(String image_name) async {
    var image = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      widget.details[image_name] = File(image.path);
      print('Image Path: $widget.details[image_name]');
    });
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
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
                      padding: const EdgeInsets.only(right: 190),
                      child: Align(
                          child: Text(
                        'Upload Pictures',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, right: 310),
                      child: Align(
                        child: Text(
                          'Logo',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 20),
                          child: Container(
                            width: 170,
                            height: 150,
                            child: RaisedButton(
                              onPressed: () {
                                getImage('logo');
                              },
                              color: Color(0xFF811a41),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              child: Center(
                                child: (widget.details['logo'] != null)
                                    ? Image.file(widget.details['logo'])
                                    : Icon(
                                        Icons.camera_alt,
                                        size: 40.0,
                                        color: Colors.white,
                                      ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: (widget.details['logo'] != null)
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
                          'Cover Picture',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 20),
                          child: Container(
                            width: 170,
                            height: 150,
                            child: RaisedButton(
                              onPressed: () {
                                getImage('cover_picture');
                              },
                              color: Color(0xFF811a41),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              child: Center(
                                child: (widget.details['cover_picture'] != null)
                                    ? Image.file(
                                        widget.details['cover_picture'])
                                    : Icon(
                                        Icons.camera_alt,
                                        size: 40.0,
                                        color: Colors.white,
                                      ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: (widget.details['cover_picture'] != null)
                                  ? null
                                  : Text('(Click here to add Image)'),
                            )
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, right: 190),
                      child: Align(
                        child: Text(
                          'Restaurant Pictures',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 20, right: 20),
                          child: Container(
                            width: 160,
                            height: 150,
                            child: RaisedButton(
                              onPressed: () {
                                getImage('restaurant_picture_1');
                              },
                              color: Color(0xFF811a41),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              child: Center(
                                child: (widget
                                            .details['restaurant_picture_1'] !=
                                        null)
                                    ? Image.file(
                                        widget.details['restaurant_picture_1'])
                                    : Icon(
                                        Icons.camera_alt,
                                        size: 40.0,
                                        color: Colors.white,
                                      ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 20, right: 20),
                          child: Container(
                            width: 160,
                            height: 150,
                            child: RaisedButton(
                              onPressed: () {
                                getImage('restaurant_picture_2');
                              },
                              color: Color(0xFF811a41),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              child: Center(
                                child: (widget
                                            .details['restaurant_picture_2'] !=
                                        null)
                                    ? Image.file(
                                        widget.details['restaurant_picture_2'])
                                    : Icon(
                                        Icons.camera_alt,
                                        size: 40.0,
                                        color: Colors.white,
                                      ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, left: 20, right: 20),
                          child: Container(
                            width: 160,
                            height: 150,
                            child: RaisedButton(
                              onPressed: () {
                                getImage('restaurant_picture_3');
                              },
                              color: Color(0xFF811a41),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              child: Center(
                                child: (widget
                                            .details['restaurant_picture_3'] !=
                                        null)
                                    ? Image.file(
                                        widget.details['restaurant_picture_3'])
                                    : Icon(
                                        Icons.camera_alt,
                                        size: 40.0,
                                        color: Colors.white,
                                      ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, left: 20, right: 20),
                          child: Container(
                            width: 160,
                            height: 150,
                            child: RaisedButton(
                              onPressed: () {
                                getImage('restaurant_picture_4');
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              color: Color(0xFF811a41),
                              child: Center(
                                child: (widget
                                            .details['restaurant_picture_4'] !=
                                        null)
                                    ? Image.file(
                                        widget.details['restaurant_picture_4'])
                                    : Icon(
                                        Icons.camera_alt,
                                        size: 40.0,
                                        color: Colors.white,
                                      ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 80,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(150, 25, 150, 15.0),
                        child: RaisedButton(
                          color: Color(0xFF811a41),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          onPressed: () async {
                            setState(() => loading = true);
                            widget.details['authorized'] =
                                '0'; //TODO: Change to name
                            dynamic result =
                                await _auth.registerWithEmailAndPassword(
                                    email: widget.details['email'],
                                    password: widget.details['password'],
                                    restaurant_name:
                                        widget.details['restaurant_name'],
                                    location: widget.details['location'],
                                    establishment_type:
                                        widget.details['establishment_type'],
                                    phone_number:
                                        widget.details['phone_number'],
                                    gst_or_pan: widget.details['gst_or_pan'],
                                    account_number:
                                        widget.details['account_number'],
                                    ifsc_code: widget.details['ifsc_code'],
                                    account_holder_name:
                                        widget.details['account_holder_name'],
                                    authorized: widget.details['authorized']);
                            if (result == null) {
                              setState(() {
                                loading = false;
                                _error = 'Please provide a Valid Email.';
                              });
                              //different error like user already registered and invalid email have to be shown
                              //in the front end somehow (figure out how to differentiate between the two)
                            }
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Wrapper()));
                            final user =
                                Provider.of<User>(context, listen: false);
                            print(user.uid);
                            _storage.uploadPicture(
                                uid: user.uid,
                                imageFileName: 'shop_licence',
                                image: widget.details['shop_licence']);
                            _storage.uploadPicture(
                                uid: user.uid,
                                imageFileName: 'fssai_licence',
                                image: widget.details['fssai_licence']);
                            _storage.uploadPicture(
                                uid: user.uid,
                                imageFileName: 'logo',
                                image: widget.details['logo']);
                            _storage.uploadPicture(
                                uid: user.uid,
                                imageFileName: 'cover_picture',
                                image: widget.details['cover_picture']);
                            _storage.uploadPicture(
                                uid: user.uid,
                                imageFileName: 'restaurant_picture_1',
                                image: widget.details['restaurant_picture_1']);
                            _storage.uploadPicture(
                                uid: user.uid,
                                imageFileName: 'restaurant_picture_2',
                                image: widget.details['restaurant_picture_2']);
                            _storage.uploadPicture(
                                uid: user.uid,
                                imageFileName: 'restaurant_picture_3',
                                image: widget.details['restaurant_picture_3']);
                            _storage.uploadPicture(
                                uid: user.uid,
                                imageFileName: 'restaurant_picture_4',
                                image: widget.details['restaurant_picture_4']);
                          },
                          child: const Text('Done',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
