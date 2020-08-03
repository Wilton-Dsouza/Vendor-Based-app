import 'package:flutter/material.dart';
import 'package:login_app/screens/authenticate/registerpage1.dart';
import 'package:login_app/screens/authenticate/signin.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;

  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignIn(
          toggleView: toggleView); //to access the function in signin page
      // First toggleView is the property name and can be anything.
      // Just need to match the constructor in signin page
    } else {
      return RegisterPage1(
        toggleView: toggleView,
      );
    }
  }
}
