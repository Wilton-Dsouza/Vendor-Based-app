import 'package:flutter/material.dart';
import 'package:login_app/screens/authenticate/registerpage4.dart';

class RegisterPage3 extends StatefulWidget {
  var details = new Map();
  RegisterPage3({this.details});

  _RegisterPage3State createState() => _RegisterPage3State();
}

class _RegisterPage3State extends State<RegisterPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF811a41),
      body: Card(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Align(
                              child: Text(
                            'Bank Details',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
                  child: TextField(
                    obscureText: false,
                    style: TextStyle(fontSize: 20),
                    cursorColor: new Color(0xFF811a41),
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: new Color(0xFF811a41))),
                        labelText: 'Account Number',
                        labelStyle: TextStyle(color: Color(0xFF811a41))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 0.0),
                  child: TextField(
                    obscureText: false,
                    style: TextStyle(fontSize: 20),
                    cursorColor: new Color(0xFF811a41),
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: new Color(0xFF811a41))),
                        labelText: 'Confirm Account Number',
                        labelStyle: TextStyle(color: Color(0xFF811a41))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                  child: TextField(
                    obscureText: false,
                    style: TextStyle(fontSize: 20),
                    cursorColor: new Color(0xFF811a41),
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: new Color(0xFF811a41))),
                        labelText: 'IFSC Code',
                        labelStyle: TextStyle(color: Color(0xFF811a41))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                  child: TextField(
                    obscureText: false,
                    style: TextStyle(fontSize: 20),
                    cursorColor: new Color(0xFF811a41),
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: new Color(0xFF811a41))),
                        labelText: 'Account Holder Name',
                        labelStyle: TextStyle(color: Color(0xFF811a41))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 60.0, 20.0, 10.0),
                  child: Container(
                    width: 150,
                    height: 50,
                    child: RaisedButton(
                      color: new Color(0xFF811a41),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterPage4(
                                details: widget.details,
                              ),
                            ));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Text('Next',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
