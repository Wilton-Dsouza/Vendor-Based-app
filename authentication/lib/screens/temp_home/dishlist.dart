import 'package:flutter/material.dart';
import 'package:login_app/models/dish_info.dart';
import 'package:provider/provider.dart';

import 'dishtile.dart';

class DishList extends StatefulWidget {
  @override
  _DishListState createState() => _DishListState();
}

class _DishListState extends State<DishList> {
  @override
  Widget build(BuildContext context) {
//    final usersInfo = Provider.of<QuerySnapshot>(context);
//    print(usersInfo);
//    print(usersInfo.documents);
//    for (var doc in usersInfo.documents) {
//      print(doc.data);
//    }
    final dishInfo = Provider.of<List<MyDishInfo>>(context) ?? [];
//    for (var dish in dishInfo) {
//      print(dish.dishName);
//      print(dish.category);
//      print(dish.originalPrice);
//      print(dish.discountedPrice);
//      print(dish.specialDish);
//    }

    return ListView.builder(
        itemCount: dishInfo.length,
        itemBuilder: (context, index) {
          return DishTile(dish: dishInfo[index]);
        });
  }
}
