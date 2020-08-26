import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:login_app/models/user.dart';
import 'package:login_app/services/database.dart';
import 'package:login_app/services/storage.dart';
import 'package:login_app/shared/loading.dart';
import 'package:provider/provider.dart';

class AddItem extends StatefulWidget {
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  bool loading = false;

  String dishName, description, category;
  int originalPrice, discountedPrice;
  bool specialDish;
  File dishImage;
  int _value = 1;

  bool _specialDishChecked = false;
  int _categoryValue = null;

  final picker = ImagePicker();

  Future getImage() async {
    var image = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      dishImage = File(image.path);
      print('Image Path: $dishImage');
    });
  }

  final Storage _storage = Storage();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              centerTitle: true,
              elevation: 0.0,
              backgroundColor: Colors.white,
              title: Text(
                'Add Item',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ),
            body: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Container(
                                      width: 150,
                                      height: 150,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Color(0xffd3d3d3),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20))),
                                        child: GestureDetector(
                                            onTap: () {
                                              getImage();
                                            },
                                            child: (dishImage != null)
                                                ? ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    child: Image.file(
                                                      dishImage,
                                                      fit: BoxFit.fill,
                                                      width: 150,
                                                    ))
                                                : Icon(
                                                    Icons.camera_alt,
                                                    size: 40.0,
                                                    color: Color(0xFF811a41),
                                                  )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Text('Insert Image',
                          style: TextStyle(
                              color: Color(0xff811a41), fontSize: 16)),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: new TextFormField(
                          validator: (input) => input.isEmpty
                              ? 'Please enter the name of the dish'
                              : null,
                          onChanged: (input) {
                            dishName = input.trim();
                          },
                          style: TextStyle(color: Color(0xff811a41)),
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff811a41))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff811a41))),
                              border: OutlineInputBorder(),
                              labelText: 'Name of the Dish',
                              labelStyle: TextStyle(color: Color(0xff811a41))),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 25.0),
                        child: new TextFormField(
                          validator: (input) => input.isEmpty
                              ? 'Please enter the description'
                              : null,
                          onChanged: (input) {
                            description = input.trim();
                          },
                          style: TextStyle(color: Color(0xff811a41)),
                          maxLines: 5,
                          minLines: 5,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff811a41))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff811a41))),
                              border: OutlineInputBorder(),
                              labelText: 'Description',
                              labelStyle: TextStyle(color: Color(0xff811a41))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 25.0),
                      child: Container(
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Flexible(
                              child: new TextFormField(
                                keyboardType: TextInputType.number,
                                validator: (input) => input.isEmpty
                                    ? 'Please enter the original price'
                                    : null,
                                onChanged: (input) {
                                  originalPrice = int.parse(input);
                                },
                                style: TextStyle(color: Color(0xff811a41)),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xff811a41))),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xff811a41))),
                                    border: OutlineInputBorder(),
                                    labelText: 'Original Price',
                                    labelStyle:
                                        TextStyle(color: Color(0xff811a41))),
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            new Flexible(
                              child: new TextFormField(
                                keyboardType: TextInputType.number,
                                validator: (input) => input.isEmpty
                                    ? 'Please enter the discount price'
                                    : null,
                                onChanged: (input) {
                                  discountedPrice = int.parse(input);
                                },
                                style: TextStyle(color: Color(0xff811a41)),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xff811a41))),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xff811a41))),
                                    border: OutlineInputBorder(),
                                    labelText: 'Discount Price',
                                    labelStyle:
                                        TextStyle(color: Color(0xff811a41))),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(color: Color(0xff811a41))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButtonHideUnderline(
                          child: Container(
                            child: DropdownButton(
                                hint: Text("Select Category",
                                    style: TextStyle(color: Color(0xff811a41))),
                                dropdownColor: Colors.white,
                                value: _categoryValue,
                                items: [
                                  DropdownMenuItem(
                                    child: Text("Breakfast",
                                        style: TextStyle(
                                            color: Color(0xff811a41))),
                                    value: 1,
                                  ),
                                  DropdownMenuItem(
                                    child: Text("Vegan",
                                        style: TextStyle(
                                            color: Color(0xff811a41))),
                                    value: 2,
                                  ),
                                  DropdownMenuItem(
                                      child: Text("Pizza",
                                          style: TextStyle(
                                              color: Color(0xff811a41))),
                                      value: 3),
                                  DropdownMenuItem(
                                      child: Text("Juice",
                                          style: TextStyle(
                                              color: Color(0xff811a41))),
                                      value: 4),
                                  DropdownMenuItem(
                                      child: Text("Ice Cream",
                                          style: TextStyle(
                                              color: Color(0xff811a41))),
                                      value:5),
                                  DropdownMenuItem(
                                      child: Text("Healthy",
                                          style: TextStyle(
                                              color: Color(0xff811a41))),
                                      value: 6),
                                  DropdownMenuItem(
                                      child: Text("Chinese",
                                          style: TextStyle(
                                              color: Color(0xff811a41))),
                                      value: 7),
                                  DropdownMenuItem(
                                      child: Text("Deserts",
                                          style: TextStyle(
                                              color: Color(0xff811a41))),
                                      value: 8),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    switch (value) {
                                      case 1:
                                        category = 'Breakfast';
                                        break;
                                      case 2:
                                        category = 'Vegan';
                                        break;
                                      case 3:
                                        category = 'Pizza';
                                        break;
                                      case 4:
                                        category = 'Juice';
                                        break;
                                      case 5:
                                        category = 'Ice Cream';
                                        break;
                                      case 6:
                                        category = 'Healthy';
                                        break;
                                      case 7:
                                        category = 'Chinese';
                                        break;
                                      case 8:
                                        category = 'Deserts';
                                        break;
                                      default:
                                        category = 'Not Selected';
                                    }
                                    _categoryValue = value;
                                  });
                                }),
                          ),
                        ),
                      ),
                    ),
                    CheckboxListTile(
                      title: Text("Special Dish",
                          style: TextStyle(color: Color(0xff811a41))),
                      value: _specialDishChecked,
                      onChanged: (value) {
                        specialDish = value;
                        setState(() {
                          _specialDishChecked = value;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor:
                          new Color(0xff811a41), //  <-- leading Checkbox
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                      child: Container(
                        height: 50,
                        width: 150,
                        child: RaisedButton(
                          textColor: Colors.white,
                          color: Color(0xff811a41),
                          onPressed: () async {
                            // Respond to button press
                            if (_formKey.currentState.validate()) {
                              setState(() => loading = true);
                              final user =
                                  Provider.of<MyUser>(context, listen: false);
                              print(user.uid);
                              await DatabaseService(uid: user.uid)
                                  .updateRestaurantData(
                                      dishName: dishName,
                                      originalPrice: originalPrice,
                                      discountedPrice: discountedPrice,
                                      category: category,
                                      specialDish: specialDish);
                              print('Restaurant Data Updated');
                              await _storage.uploadDishPicture(
                                  uid: user.uid,
                                  imageFileName: dishName,
                                  image: dishImage);
                              print('Dish Picture Updated');
                              Navigator.pop(context);
                            }
                          },
                          child: Text('Add Item'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
