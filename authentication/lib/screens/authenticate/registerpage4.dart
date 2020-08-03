import 'package:flutter/material.dart';

class RegisterPage4 extends StatefulWidget {
  var details = new Map();
  RegisterPage4({this.details});

  _RegisterPage4 createState() => _RegisterPage4();
}

class _RegisterPage4 extends State<RegisterPage4> {
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
                padding: const EdgeInsets.only(right: 190),
                child: Align(
                    child: Text(
                  'Upload Pictures',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 310),
                child: Align(
                    child: Text(
                  'Logo',
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
                          color: Color(0xFF811a41),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                              size: 40.0,
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
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 240),
                child: Align(
                    child: Text(
                  'Cover Picture',
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
                          color: Color(0xFF811a41),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
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
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 190),
                child: Align(
                    child: Text(
                  'Restaurant Pictures',
                  style: TextStyle(fontSize: 20),
                )),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Container(
                      width: 160,
                      height: 150,
                      child: RaisedButton(
                          onPressed: () {},
                          color: Color(0xFF811a41),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.camera_alt,
                              size: 40.0,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Container(
                      width: 160,
                      height: 150,
                      child: RaisedButton(
                          onPressed: () {},
                          color: Color(0xFF811a41),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.camera_alt,
                              size: 40.0,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 20, right: 20),
                    child: Container(
                      width: 160,
                      height: 150,
                      child: RaisedButton(
                          onPressed: () {},
                          color: Color(0xFF811a41),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                              size: 40.0,
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 20, right: 20),
                    child: Container(
                      width: 160,
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
                              color: Colors.white,
                              size: 40.0,
                            ),
                          )),
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
                    onPressed: () {},
                    child: const Text('Done',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
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
