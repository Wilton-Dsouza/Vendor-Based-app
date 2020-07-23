import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/CustomShapeClipper.dart';

void main() {
  runApp(MaterialApp(
    home: login(),
  ));
}

class login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          topPart(),
          Center(
            child: SingleChildScrollView(
              child:
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Login',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10.0,0.0,10.0,10.0),
                            child: TextField(
                              obscureText: false,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                labelText: 'Email Id',
                                labelStyle: TextStyle(color: Colors.blueGrey,)
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10.0,0.0,10.0,10.0),
                            child: TextField(
                              obscureText: true,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                labelText: 'Password',
                                  labelStyle: TextStyle(color: Colors.blueGrey)
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0,20.0,0.0,10.0),
                            child: Text(
                              'Forgot Password',
                                style: TextStyle(fontSize: 15,color: Colors.blueGrey)
                            ),
                          )
                        ],
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
              onPressed: () {
                // Respond to button press
              },
              color: new Color(0xFF811a41),
              child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20,color: Colors.white)
              ),
            ),
          ),
          Positioned(
            top: 630,
            child: Text(
                'Click Here to Sign Up',
                style: TextStyle(fontSize: 20,color: Colors.blueGrey)
            ),
          )
        ],
      )
    );
  }
}

class topPart extends StatefulWidget{
  @override
  _topPartState createState() => _topPartState();
}

class _topPartState extends State<topPart>{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              height: 400.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/img5.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
        ),
      ],
    );
  }
}

