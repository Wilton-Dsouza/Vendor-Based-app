import 'package:flutter/material.dart';
import 'package:login_app/models/dish_info.dart';
import 'package:provider/provider.dart';

class UserList extends StatefulWidget {
  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
//    final usersInfo = Provider.of<QuerySnapshot>(context);
//    print(usersInfo);
//    print(usersInfo.documents);
//    for (var doc in usersInfo.documents) {
//      print(doc.data);
//    }
    final dishInfo = Provider.of<List<MyDishInfo>>(context) ?? [];
    for (var dish in dishInfo) {
      print(dish.dishName);
      print(dish.category);
      print(dish.originalPrice);
      print(dish.discountedPrice);
      print(dish.specialDish);
    }
    return Container();
  }
}
