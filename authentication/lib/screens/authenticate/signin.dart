import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_app/main.dart';
import 'package:login_app/services/auth.dart';

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

  //text field state
  String _email = '', _password = '';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//  Future<void> signIn() async {
//    final formState = _formKey.currentState;
//    // connecting to firebase
//    if (formState.validate()) {
//      formState.save();
//      try {
//        AuthResult user = await FirebaseAuth.instance
//            .signInWithEmailAndPassword(email: _email, password: _password);
//        print('success');
//      } catch (e) {
//        print(e.message);
//      }
//    }
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Column(
            children: <Widget>[
              ClipPath(
                clipper: CustomShapeClipper(),
                child: Container(
                  height: 300.0,
                  color: Color(0xFF811a41),
//                  decoration: BoxDecoration(
//                    image: DecorationImage(
//                      image: AssetImage('assets/img5.jpg'),
//                      fit: BoxFit.fill,
//                    ),
//                  ),
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
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold),
                            ),
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
                              decoration: InputDecoration(
                                  labelText: 'Email Id',
                                  labelStyle: TextStyle(
                                    color: Colors.blueGrey,
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
                              decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle:
                                      TextStyle(color: Colors.blueGrey)),
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
                //have to call the signInAnon() defined in auth.dart by using _auth instance defined above itself
                //will return user or null(check auth.dart), hence dynamic

                print(_email);
                print(_password);

//                if (result == null) {
//                  print('error signing in');
//                } else {
//                  print('signed in');
//                  print(result.uid);
//                }
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
              onTap: () {
                widget.toggleView();
                //cant use this.toggleView() as it refers the State instead of Widget
              },
            ),
          )
        ],
      ),
    );
  }
}
