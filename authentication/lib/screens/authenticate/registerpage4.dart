import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:login_app/models/user.dart';
import 'package:login_app/screens/wrapper.dart';
import 'package:login_app/services/auth.dart';
import 'package:login_app/services/storage.dart';
import 'package:login_app/shared/loading.dart';
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
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Card(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top:15.0),
                            child: Row(
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
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Align(
                                    child: Text(
                                  'Upload Pictures',
                                  style: TextStyle(
                                      fontSize: 25, fontWeight: FontWeight.bold),
                                )),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 30, left: 20),
                                child: Align(
                                  child: Text(
                                    'Logo',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10, left: 20),
                                    child: Container(
                                      width: 170,
                                      height: 150,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xffd3d3d3),
                                            borderRadius: BorderRadius.all(Radius.circular(20))),
                                        child: GestureDetector(
                                          onTap: () {
                                            getImage('logo');
                                          },
                                          child: (widget.details['logo'] != null)
                                              ? ClipRRect(borderRadius: BorderRadius.circular(20),
                                              child: Image.file(widget.details['logo'],fit: BoxFit.fill,width: 170,))
                                              : Icon(
                                                  Icons.camera_alt,
                                                  size: 40.0,
                                                  color: Color(0xff811a41),
                                                ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
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
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 30, left: 20),
                                child: Align(
                                  child: Text(
                                    'Cover Picture',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10, left: 20),
                                    child: Container(
                                      width: 170,
                                      height: 150,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xffd3d3d3),
                                            borderRadius: BorderRadius.all(Radius.circular(20))),
                                        child: GestureDetector(
                                          onTap: () {
                                            getImage('cover_picture');
                                          },
                                          child: (widget.details['cover_picture'] != null)
                                              ? ClipRRect(
                                            borderRadius: BorderRadius.circular(20),
                                            child: Image.file(
                                                    widget.details['cover_picture'],fit: BoxFit.fill,width: 170,),
                                              )
                                              : Icon(
                                                  Icons.camera_alt,
                                                  size: 40.0,
                                                  color: Color(0xff811a41),
                                                ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
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
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 20, right: 20),
                                    child: Container(
                                      width: 160,
                                      height: 150,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xffd3d3d3),
                                            borderRadius: BorderRadius.all(Radius.circular(20))),
                                        child: GestureDetector(
                                          onTap: () {
                                            getImage('restaurant_picture_1');
                                          },
                                          child: (widget
                                                      .details['restaurant_picture_1'] !=
                                                  null)
                                              ? ClipRRect(
                                            borderRadius: BorderRadius.circular(20),
                                            child: Image.file(
                                                    widget.details['restaurant_picture_1'],fit: BoxFit.fill,width: 170,),
                                              )
                                              : Icon(
                                                  Icons.camera_alt,
                                                  size: 40.0,
                                                  color: Color(0xff811a41),
                                                ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 20, right: 20),
                                    child: Container(
                                      width: 160,
                                      height: 150,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xffd3d3d3),
                                            borderRadius: BorderRadius.all(Radius.circular(20))),
                                        child: GestureDetector(
                                          onTap: () {
                                            getImage('restaurant_picture_2');
                                          },
                                          child: (widget
                                                      .details['restaurant_picture_2'] !=
                                                  null)
                                              ? ClipRRect(
                                            borderRadius: BorderRadius.circular(20),
                                            child: Image.file(
                                                    widget.details['restaurant_picture_2'],fit: BoxFit.fill,width: 170,),
                                              )
                                              : Icon(
                                                  Icons.camera_alt,
                                                  size: 40.0,
                                                  color: Color(0xff811a41),
                                                ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30, left: 20, right: 20),
                                    child: Container(
                                      width: 160,
                                      height: 150,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xffd3d3d3),
                                            borderRadius: BorderRadius.all(Radius.circular(20))),
                                        child: GestureDetector(
                                          onTap: () {
                                            getImage('restaurant_picture_3');
                                          },
                                          child: (widget
                                                      .details['restaurant_picture_3'] !=
                                                  null)
                                              ? ClipRRect(
                                            borderRadius: BorderRadius.circular(20),
                                            child: Image.file(
                                                    widget.details['restaurant_picture_3'],fit: BoxFit.fill,width: 170,),
                                              )
                                              : Icon(
                                                  Icons.camera_alt,
                                                  size: 40.0,
                                                  color: Color(0xff811a41),
                                                ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30, left: 20, right: 20),
                                    child: Container(
                                      width: 160,
                                      height: 150,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xffd3d3d3),
                                            borderRadius: BorderRadius.all(Radius.circular(20))),
                                        child: GestureDetector(
                                          onTap: () {
                                            getImage('restaurant_picture_4');
                                          },
                                          child: (widget
                                                      .details['restaurant_picture_4'] !=
                                                  null)
                                              ? ClipRRect(
                                            borderRadius: BorderRadius.circular(20),
                                                child: Image.file(
                                                    widget.details['restaurant_picture_4'],fit: BoxFit.fill,width: 170,),
                                              )
                                              : Icon(
                                                  Icons.camera_alt,
                                                  size: 40.0,
                                                  color: Color(0xff811a41),
                                                ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 10.0),
                            child: Container(
                              width: 150,
                              height: 50,
                              child: RaisedButton(
                                color: Color(0xFF811a41),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
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
                                  Navigator.of(context).pushAndRemoveUntil(
                                      MaterialPageRoute(
                                          builder: (context) => Wrapper()),
                                      (route) => false);

                                  final user =
                                      Provider.of<User>(context, listen: false);
                                  print(user.uid);
                                  _storage.uploadUserInfoPicture(
                                      uid: user.uid,
                                      imageFileName: 'shop_licence',
                                      image: widget.details['shop_licence']);
                                  _storage.uploadUserInfoPicture(
                                      uid: user.uid,
                                      imageFileName: 'fssai_licence',
                                      image: widget.details['fssai_licence']);
                                  _storage.uploadUserInfoPicture(
                                      uid: user.uid,
                                      imageFileName: 'logo',
                                      image: widget.details['logo']);
                                  _storage.uploadUserInfoPicture(
                                      uid: user.uid,
                                      imageFileName: 'cover_picture',
                                      image: widget.details['cover_picture']);
                                  _storage.uploadUserInfoPicture(
                                      uid: user.uid,
                                      imageFileName: 'restaurant_picture_1',
                                      image: widget.details['restaurant_picture_1']);
                                  _storage.uploadUserInfoPicture(
                                      uid: user.uid,
                                      imageFileName: 'restaurant_picture_2',
                                      image: widget.details['restaurant_picture_2']);
                                  _storage.uploadUserInfoPicture(
                                      uid: user.uid,
                                      imageFileName: 'restaurant_picture_3',
                                      image: widget.details['restaurant_picture_3']);
                                  _storage.uploadUserInfoPicture(
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
                  ],
                ),
              ),
            ),
          );
  }
}
