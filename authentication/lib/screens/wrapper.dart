import 'package:flutter/material.dart';
import 'package:login_app/models/user.dart';
import 'package:login_app/screens/authenticate/authenticate.dart';
import 'package:login_app/screens/home/managescreen.dart';
import 'package:login_app/screens/temp_home/temp_home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //this registers the user stream (User object(signed in) or null(signed out))
    final user = Provider.of<User>(context); //this 'user' variable is different
    print(user);

    //return either home or login(authenticate) page
    if (user == null) {
      return Authenticate();
    } else {
      return ManageScreen();
    }
  }
}
