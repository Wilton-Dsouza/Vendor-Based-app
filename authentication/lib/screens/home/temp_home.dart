import 'package:flutter/material.dart';
import 'package:login_app/services/auth.dart';

class TempHomePage extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: new Color(0xFF811a41),
        actions: <Widget>[
          FlatButton.icon(
            textColor: Colors.white,
            icon: Icon(Icons.person),
            label: Text('Logout'),
            onPressed: () async {
              await _auth.signOut(); //we dont have to return anything cause our
              // stream will get null value when this is complete and take us to login page
            },
          )
        ],
      ),
    );
  }
}
