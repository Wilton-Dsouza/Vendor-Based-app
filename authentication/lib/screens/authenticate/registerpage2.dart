import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:login_app/screens/authenticate/registerpage3.dart';

class RegisterPage2 extends StatefulWidget {
  var details = new Map();
  RegisterPage2({this.details});
  _RegisterPage2State createState() => _RegisterPage2State();
}

class _RegisterPage2State extends State<RegisterPage2> {
  final _formKey = GlobalKey<FormState>();
//  File _image;
  final picker = ImagePicker();

  Future getImage(String image_name) async {
    var image = await picker.getImage(source: ImageSource.gallery);

    setState(() {
//      _image = File(image.path);
      widget.details[image_name] = File(image.path);
//      print('Image Path: $_image');
      print('Image Path: $widget.details[image_name]');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF811a41),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                alignment: Alignment.topLeft,
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Align(
                                child: Text(
                              'License Information',
                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                              'Shop Licence',
                              style: TextStyle(fontSize: 20),
                            )),
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
                                      borderRadius: BorderRadius.circular(18.0),
                                      color: Color(0xffd3d3d3),
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        getImage('shop_licence');
                                      },

                                      child: (widget.details['shop_licence'] != null)
                                          ? ClipRRect(
                                          borderRadius: BorderRadius.circular(18),
                                          child: Image.file(widget.details['shop_licence'],fit:BoxFit.fill,width: 170,))
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
                                child: (widget.details['shop_licence'] != null)
                                    ? null
                                    : Text('(Click here to add Image)'),
                              ),
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
                                'FSSAI License',
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
                                        getImage('fssai_licence');
                                      },
                                      child: (widget.details['fssai_licence'] != null)
                                          ? ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: Image.file(widget.details['fssai_licence'],fit: BoxFit.fill,width: 170,))
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
                                child: (widget.details['fssai_licence'] != null)
                                    ? null
                                    : Text('(Click here to add Image)'),
                              ),
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
                          child: TextFormField(
                            validator: (input) => input.isEmpty
                                ? 'Please enter a valid GST/PAN number'
                                : null,
                            onChanged: (input) {
                              setState(() => widget.details['gst_or_pan'] = input);
                            },
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
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: Container(
                          width: 150,
                          height: 50,
                          child: RaisedButton(
                            color: Color(0xFF811a41),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            onPressed: () async {
                              if (_formKey.currentState.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RegisterPage3(
                                        details: widget.details,
                                      ),
                                    ));
                              }
                            },
                            child: const Text('Next',
                                style: TextStyle(fontSize: 20, color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
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
