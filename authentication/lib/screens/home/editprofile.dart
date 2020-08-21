import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: profileedit(),
  ));
}

class profileedit extends StatefulWidget
{
  editState createState() => editState();
}

class editState extends State<profileedit>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF811a41),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(top:15.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.arrow_back),
                            color: Colors.black,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              'Edit Profile',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
                        child: TextField(
                          style: TextStyle(fontSize: 18),
                          cursorColor: new Color(0xFF811a41),
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                  BorderSide(color: new Color(0xFF811a41))),
                              labelText: 'Name',
                              labelStyle: TextStyle(color: Color(0xFF811a41))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
                        child: TextField(
                          style: TextStyle(fontSize: 18),
                          cursorColor: new Color(0xFF811a41),
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                  BorderSide(color: new Color(0xFF811a41))),
                              labelText: 'Mobile',
                              labelStyle: TextStyle(color: Color(0xFF811a41))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
                        child: TextField(
                          style: TextStyle(fontSize: 18),
                          cursorColor: new Color(0xFF811a41),
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                  BorderSide(color: new Color(0xFF811a41))),
                              labelText: 'Restaurant Name',
                              labelStyle: TextStyle(color: Color(0xFF811a41))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
                        child: TextField(
                          style: TextStyle(fontSize: 18),
                          cursorColor: new Color(0xFF811a41),
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                  BorderSide(color: new Color(0xFF811a41))),
                              labelText: 'Location',
                              labelStyle: TextStyle(color: Color(0xFF811a41))),
                        ),
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
                                padding: const EdgeInsets.only(top: 10, left: 25),
                                child: Container(
                                  width: 170,
                                  height: 150,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffd3d3d3),
                                        borderRadius: BorderRadius.all(Radius.circular(20))),
                                    child: GestureDetector(
                                      onTap: () {
                                      },
                                      child:  Icon(
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
                                child:Text('(Click here to add Image)'),
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
                                padding: const EdgeInsets.only(top: 10, left: 25),
                                child: Container(
                                  width: 170,
                                  height: 150,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffd3d3d3),
                                        borderRadius: BorderRadius.all(Radius.circular(20))),
                                    child: GestureDetector(
                                      onTap: () {
                                      },
                                      child:  Icon(
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
                                child:Text('(Click here to add Image)'),
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
                                'Restaurant Picture',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Wrap(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 10, left: 10),
                                child: Container(
                                  width: 170,
                                  height: 150,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffd3d3d3),
                                        borderRadius: BorderRadius.all(Radius.circular(20))),
                                    child: GestureDetector(
                                      onTap: () {
                                      },
                                      child:  Icon(
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
                                padding: const EdgeInsets.only(top: 10, left: 10),
                                child: Container(
                                  width: 170,
                                  height: 150,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffd3d3d3),
                                        borderRadius: BorderRadius.all(Radius.circular(20))),
                                    child: GestureDetector(
                                      onTap: () {
                                      },
                                      child:  Icon(
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
                                padding: const EdgeInsets.only(top: 10, left: 10),
                                child: Container(
                                  width: 170,
                                  height: 150,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffd3d3d3),
                                        borderRadius: BorderRadius.all(Radius.circular(20))),
                                    child: GestureDetector(
                                      onTap: () {
                                      },
                                      child:  Icon(
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
                                padding: const EdgeInsets.only(top: 10, left: 10),
                                child: Container(
                                  width: 170,
                                  height: 150,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xffd3d3d3),
                                        borderRadius: BorderRadius.all(Radius.circular(20))),
                                    child: GestureDetector(
                                      onTap: () {
                                      },
                                      child:  Icon(
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
                          width: 120,
                          height: 50,
                          child: RaisedButton(
                            color: Color(0xFF811a41),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            onPressed: (){},
                            child: const Text('Save',
                                style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


