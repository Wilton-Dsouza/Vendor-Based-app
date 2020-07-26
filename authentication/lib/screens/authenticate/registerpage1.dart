import 'package:flutter/material.dart';

class RegisterPage1 extends StatelessWidget {
  final Function toggleView;
  RegisterPage1({this.toggleView});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Card(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 0.0),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      child: IconButton(icon: Icon(Icons.arrow_back)),
                      onTap: () {
                        this.toggleView();
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Align(
                          child: Text(
                        'Registration',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
                child: TextField(
                  obscureText: false,
                  style: TextStyle(fontSize: 20),
                  cursorColor: new Color(0xFF811a41),
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: new Color(0xFF811a41))),
                      labelText: 'Restaurant Name',
                      labelStyle: TextStyle(color: Color(0xFF811a41))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 0.0),
                child: TextField(
                  obscureText: false,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: new Color(0xFF811a41))),
                      labelText: 'Location',
                      labelStyle: TextStyle(color: Color(0xFF811a41))),
                ),
              ),
              selectcategory(),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: TextField(
                  obscureText: false,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: new Color(0xFF811a41))),
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(color: Color(0xFF811a41))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: TextField(
                  obscureText: false,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: new Color(0xFF811a41))),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Color(0xFF811a41))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: TextField(
                  obscureText: true,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: new Color(0xFF811a41))),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Color(0xFF811a41))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                child: TextField(
                  obscureText: true,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: new Color(0xFF811a41))),
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(color: Color(0xFF811a41))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                child: Container(
                  width: 150,
                  height: 50,
                  child: RaisedButton(
                    color: new Color(0xFF811a41),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Text('Next',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class selectcategory extends StatefulWidget {
  @override
  _selectcategoryState createState() => _selectcategoryState();
}

class _selectcategoryState extends State<selectcategory> {
  int _value = null;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          child: DropdownButton(
              iconEnabledColor: new Color(0xFF811a41),
              isExpanded: true,
              hint: Text(
                'Establishment Type',
                style: TextStyle(fontSize: 20, color: new Color(0xFF811a41)),
              ),
              value: _value,
              items: [
                DropdownMenuItem(
                  child: Text("Starters",
                      style: TextStyle(
                          fontSize: 20, color: new Color(0xFF811a41))),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("Main Course",
                      style: TextStyle(
                          fontSize: 20, color: new Color(0xFF811a41))),
                  value: 2,
                ),
                DropdownMenuItem(
                    child: Text("Deserts",
                        style: TextStyle(
                            fontSize: 20, color: new Color(0xFF811a41))),
                    value: 3),
                DropdownMenuItem(
                    child: Text("Beverages",
                        style: TextStyle(
                            fontSize: 20, color: new Color(0xFF811a41))),
                    value: 4)
              ],
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              }),
        ),
      ),
    );
  }
}
