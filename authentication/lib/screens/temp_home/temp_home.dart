import 'package:flutter/material.dart';
import 'package:login_app/models/dish_info.dart';
import 'package:login_app/models/user.dart';
import 'package:login_app/screens/temp_home/dishlist.dart';
import 'package:login_app/services/auth.dart';
import 'package:login_app/services/database.dart';
import 'package:provider/provider.dart';

class TempHomePage extends StatelessWidget {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser>(context, listen: false);
//    return StreamProvider<QuerySnapshot>.value(
    return StreamProvider<List<MyDishInfo>>.value(
      //done to access the userInfo document within the widget StreamProvider
      value: DatabaseService(uid: user.uid)
          .dishInfo, //'dishInfo' is  the Stream in database.dart
      child: Scaffold(
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
                await _auth
                    .signOut(); //we dont have to return anything cause our
                // stream will get null value when this is complete and take us to login page
              },
            )
          ],
        ),
        body: DishList(),
      ),
    );
  }
}
