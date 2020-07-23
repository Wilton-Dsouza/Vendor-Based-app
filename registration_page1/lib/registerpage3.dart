import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: accdetails())
  );
}

class accdetails extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[Padding(
              padding: const EdgeInsets.fromLTRB(0.0,25.0,0.0,0.0),
              child: Row(
                children: <Widget>[
                  IconButton(icon: Icon(Icons.arrow_back, color: Color(0xFF811a41),
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(child: Text('Bank Details',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                  ),
                ],
              ),
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
                          borderSide: BorderSide(color: new Color(0xFF811a41))),
                      labelText: 'Account Number',
                      labelStyle: TextStyle(color: Color(0xFF811a41))
                  ),
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
                          borderSide: BorderSide(color: new Color(0xFF811a41))),
                      labelText: 'Confirm Account Number',
                      labelStyle: TextStyle(color: Color(0xFF811a41))
                  ),
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
                          borderSide: BorderSide(color: new Color(0xFF811a41))),
                      labelText: 'IFSC Code',
                      labelStyle: TextStyle(color: Color(0xFF811a41))
                  ),
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
                          borderSide: BorderSide(color: new Color(0xFF811a41))),
                      labelText: 'Account Holder Name',
                      labelStyle: TextStyle(color: Color(0xFF811a41))
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 10.0),
                child: Container(
                  width: 150,
                  height: 50,
                  child: RaisedButton(
                    color: new Color(0xFF811a41),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Text('Next', style: TextStyle(fontSize: 20,color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }


}

