import 'package:flutter/material.dart';

class Licence extends StatefulWidget {
  _LicenceState createState() => _LicenceState();
}

class _LicenceState extends State<Licence> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF811a41),
      body: Center(
        child: Card(
          child: ListView(
            children: <Widget>[
              IconButton(
                alignment: Alignment.topLeft,
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 140),
                child: Align(child: Text('License Information',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
              ),
              Padding(
                padding: const EdgeInsets.only(top:30,right: 240),
                child: Align(child: Text('Shop Licence',style: TextStyle(fontSize: 20),)),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:10,left: 20),
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
                          )
                      ),
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
                padding: const EdgeInsets.only(top:30,right: 240),
                child: Align(child: Text('FSSAI License',style: TextStyle(fontSize: 20),)),
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:10,left: 20),
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
                          )
                      ),
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
                  padding: const EdgeInsets.only(top:18,left: 20,right: 20,),
                  child: TextField(
                    obscureText: false,
                    cursorColor: new Color(0xFF811a41),
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: new Color(0xFF811a41))),
                        border: OutlineInputBorder(),
                        labelText: 'GST/PAN',
                        labelStyle: TextStyle(color: Color(0xFF811a41))
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(150,25,150,0.0),
                child: RaisedButton(
                  color: Color(0xFF811a41),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onPressed: () {},
                  child: const Text(
                      'Next',
                      style: TextStyle(fontSize: 20,color: Colors.white)
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
