import 'package:flutter/material.dart';
import 'package:login_app/models/userinfo.dart';
import 'package:provider/provider.dart';

class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
//    final usersInfo = Provider.of<QuerySnapshot>(context);
    final usersInfo = Provider.of<List<MyUserInfo>>(context) ?? [];
    for (var user in usersInfo) {
      print(user.name);
      print(user.sugars);
      print(user.strength);
    }
//    print(usersInfo);
//    print(usersInfo.documents);
//    for (var doc in usersInfo.documents) {
//      print(doc.data);
//    }
    return Container();
  }
}
