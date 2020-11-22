import 'package:flutter/material.dart';
import 'package:login_app/screens/authenticate/registerpage2.dart';

class RegisterPage1 extends StatefulWidget {
  final Function toggleView;
  RegisterPage1({this.toggleView});

  @override
  _RegisterPage1State createState() => _RegisterPage1State();
}

class _RegisterPage1State extends State<RegisterPage1> {
  var details = new Map();
//  String _email = '', _password = '',
  int _value;

  final _formKey = GlobalKey<FormState>();

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
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.arrow_back),
                                  onPressed: () => widget.toggleView(),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Align(
                                    child: Text(
                                  'Registration',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
                        child: TextFormField(
                          validator: (input) => input.isEmpty
                              ? 'Please enter a restaurant name'
                              : null,
                          onChanged: (input) {
                            details['restaurant_name'] = input.trim();
                          },
                          style: TextStyle(fontSize: 20),
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
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 0.0),
                        child: TextFormField(
                          validator: (input) =>
                              input.isEmpty ? 'Please enter a location' : null,
                          onChanged: (input) {
                            details['location'] = input.trim();
                          },
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: new Color(0xFF811a41))),
                              labelText: 'Location',
                              labelStyle: TextStyle(color: Color(0xFF811a41))),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(
                                20.0, 20.0, 20.0, 0.0),
                            child: DropdownButtonFormField(
                                iconEnabledColor: new Color(0xFF811a41),
                                isExpanded: true,
                                hint: Text(
                                  'Establishment Type',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: new Color(0xFF811a41)),
                                ),
                                value: _value,
                                items: [
                                  DropdownMenuItem(
                                    child: Text("Restaurant",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: new Color(0xFF811a41))),
                                    value: 1,
                                  ),
                                  DropdownMenuItem(
                                    child: Text("Cloud Kitchen",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: new Color(0xFF811a41))),
                                    value: 2,
                                  ),
                                  DropdownMenuItem(
                                      child: Text("Vendor",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: new Color(0xFF811a41))),
                                      value: 3),
                                  DropdownMenuItem(
                                      child: Text("Home Baker",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: new Color(0xFF811a41))),
                                      value: 4)
                                ],
                                onChanged: (value) {
                                  switch (value) {
                                    case 1:
                                      details['establishment_type'] =
                                          'Restaurant';
                                      break;
                                    case 2:
                                      details['establishment_type'] =
                                          'Cloud Kitchen';
                                      break;
                                    case 3:
                                      details['establishment_type'] = 'Vendor';
                                      break;
                                    case 4:
                                      details['establishment_type'] =
                                          'Home Baker';
                                      break;
                                    default:
                                      details['establishment_type'] =
                                          'Not Selected';
                                  }
                                  setState(() {
                                    _value = value;
                                  });
                                }),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                        child: TextFormField(
                          validator: (input) => input.isEmpty
                              ? 'Please enter a valid phone number'
                              : null,
                          onChanged: (input) {
                            details['phone_number'] = input.trim();
                          },
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: new Color(0xFF811a41))),
                              labelText: 'Phone Number',
                              labelStyle: TextStyle(color: Color(0xFF811a41))),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                        child: TextFormField(
                          validator: (input) => input.isEmpty
                              ? 'Please enter a valid email'
                              : null,
                          onChanged: (input) {
                            setState(() => details['email'] = input.trim());
                          },
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: new Color(0xFF811a41))),
                              labelText: 'Email',
                              labelStyle: TextStyle(color: Color(0xFF811a41))),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                        child: TextFormField(
                          validator: (input) => input.length < 6
                              ? 'Password needs to be atleast 6 characters'
                              : null,

//                              onSaved: (input) => _password = input,
                          onChanged: (input) {
                            setState(() => details['password'] = input.trim());
                          },
                          obscureText: true,
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: new Color(0xFF811a41))),
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Color(0xFF811a41))),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
                        child: TextFormField(
                          validator: (input) =>
                              input.trim() != details['password']
                                  ? 'Passwords do not match'
                                  : null,
//                      onChanged: (input) {
//                        setState(() => details['confirm_password'] = input);
//                      },
                          obscureText: true,
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: new Color(0xFF811a41))),
                              labelText: 'Confirm Password',
                              labelStyle: TextStyle(color: Color(0xFF811a41))),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                        child: Container(
                          width: 150,
                          height: 50,
                          child: RaisedButton(
                            color: new Color(0xFF811a41),
                            onPressed: () {
                              //check whether async is required
                              if (_formKey.currentState.validate()) {
                                print(details);
                                print(details['email']);
                                print(details['password']);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => RegisterPage2(
                                        details: details,
                                      ),
                                    ));
                              }
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: Text('Next',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white)),
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
