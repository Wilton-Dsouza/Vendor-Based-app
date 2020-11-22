import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_app/models/dish_info.dart';
import 'package:login_app/models/user.dart';
import 'package:login_app/services/storage.dart';
import 'package:provider/provider.dart';

class DishTile extends StatefulWidget {
  final MyDishInfo dish;
  DishTile({this.dish});

  @override
  _DishTileState createState() => _DishTileState();
}

class _DishTileState extends State<DishTile> {
  final _storage = Storage();

  String _dishImageURL;

  void download({String uid, String dishName}) async {
    _dishImageURL =
        await _storage.downloadDishPicture(uid: uid, imageFileName: dishName);
    print(_dishImageURL);
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser>(context, listen: false);
    setState(() {
      download(uid: user.uid, dishName: widget.dish.dishName);
//      _dishImageURL = _dishImageURL;
    });
    print(_dishImageURL);
    return Container(
      height: 110,
      width: 300,
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                width: 100,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: _dishImageURL == null
                          ? NetworkImage('') //TODO: Create a default assetImage
                          : NetworkImage(_dishImageURL),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            title: Text(
              "${widget.dish.dishName}",
              style: TextStyle(fontSize: 17),
            ),
            subtitle: Wrap(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: <Widget>[],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        '${widget.dish.discountedPrice}',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
              ],
            ),
            trailing: Switch(
              value: true,
              activeColor: Color(0xff811a41),
            ),
            isThreeLine: true,
          ),
        ),
      ),
    );
  }
}
