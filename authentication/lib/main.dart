import 'package:flutter/material.dart';
import 'package:login_app/models/user.dart';
import 'package:login_app/screens/wrapper.dart';
import 'package:login_app/services/auth.dart';
import 'package:provider/provider.dart';

import 'screens/authenticate/signin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      //for listening to stream
      value: AuthService().user, //'user' is in 20th line of auth.dart
      child: MaterialApp(
        home: Wrapper(), //Wrapper can now listen to the change in 'user'
      ),
    );
  }
}
