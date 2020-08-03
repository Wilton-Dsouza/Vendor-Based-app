import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_app/main.dart';
import 'package:login_app/services/auth.dart';
import 'package:login_app/shared/loading.dart';

import '../../CustomShapeClipper.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  //AuthService is in auth.dart (user defined)
  final AuthService _auth = AuthService();

  final _formKey = GlobalKey<FormState>();

  bool loading = false;

  //text field state
  String _email = '', _password = '', _error = '';

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            body: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    ClipPath(
                      clipper: CustomShapeClipper(),
                      child: Container(
//                  color: Color(0xFF811a41),
                        height: 300.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/img5.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Form(
            key: _formKey,
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.58,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child:Text('Hurry',style: TextStyle(
                                        color: Colors.grey.withOpacity(0.95),
                                        fontSize: 75,
                                        fontWeight: FontWeight.bold
                                    ),)
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: 55),
                                    child:Text('Burry',style: TextStyle(
                                        color: Color(0XFF811a41).withOpacity(0.85),
                                        fontSize: 75,
                                        fontWeight: FontWeight.bold
                                    ),)
                                ),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  10.0, 0.0, 10.0, 10.0),
                              child: TextFormField(
                                validator: (input) {
                                  if (input.isEmpty) {
                                    return 'Please fill out Email';
                                  }
                                  return '';
                                },
//                              onSaved: (input) => _email = input,
                                onChanged: (val) {
                                  setState(() => _email = val);
                                },
                                style: TextStyle(fontSize: 20),
                                cursorColor: new Color(0xFF811a41),
                                decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: new Color(0xFF811a41))),
                                    labelText: 'Email Id',
                                    labelStyle: TextStyle(
                                      color: Color(0xFF811a41),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  10.0, 0.0, 10.0, 10.0),
                              child: TextFormField(
                                validator: (input) {
                                  if (input.length < 6) {
                                    return 'Password needs to be atleast 6 characters';
                                  }
                                  return '';
                                },
//                              onSaved: (input) => _password = input,
                                onChanged: (val) {
                                  setState(() => _password = val);
                                },
                                obscureText: true,
                                style: TextStyle(fontSize: 20),
                                cursorColor: new Color(0xFF811a41),
                                decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: new Color(0xFF811a41))),
                                    labelText: 'Password',
                                    labelStyle:
                                        TextStyle(color: Color(0xFF811a41))),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
                              child: Text('Forgot Password',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.blueGrey)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 550,
                  width: 200,
                  height: 50,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: () async {
//                dynamic result = await _auth.signInAnon();
                      // have to call the signInAnon() defined in auth.dart by using _auth instance defined above itself
                      // will return user or null(check auth.dart), hence dynamic

                      if (_formKey.currentState.validate()) {
//                        print(_email);
//                        print(_password);
                        setState(() => loading = true);
                        dynamic result = await _auth.signInWithEmailAndPassword(
                            _email, _password);
                        if (result == null) {
                          setState(() {
                            _error = 'Invalid email or password';
                            loading = false;
                          });
                          // TODO:_error have to be shown in the front end
                        }
                        // no need for else because the stream will detect the auth change which detects the
                        // registered user from the firebase and take us to the home page
                      }
                    },
                    color: new Color(0xFF811a41),
                    child: Text('Login',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                ),
                Positioned(
                  top: 630,
                  child: GestureDetector(
                    child: Text('Click Here to Sign Up',
                        style: TextStyle(fontSize: 20, color: Colors.blueGrey)),
                    onTap: () => widget.toggleView(),
                    //cant use this.toggleView() as it refers the State instead of Widget
                  ),
                )
              ],
            ),
          );
  }
}