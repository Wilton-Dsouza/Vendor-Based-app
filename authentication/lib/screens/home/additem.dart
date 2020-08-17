import 'package:flutter/material.dart';

class AddItem extends StatefulWidget {
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Column(
            children: <Widget>[
              Container(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                            width: 150,
                            height: 150,
                            child: RaisedButton(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.camera_alt,
                                    size: 40.0,
                                    color: Color(0xFF811a41),
                                  ),
                                )),
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
                    style: TextStyle(color: Color(0xff811a41), fontSize: 16)),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: TextFormField(
                    style: TextStyle(color: Color(0xff811a41)),
                    maxLines: 1,
                    obscureText: false,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff811a41))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff811a41))),
                        border: OutlineInputBorder(),
                        labelText: 'Name of the Dish',
                        labelStyle: TextStyle(color: Color(0xff811a41))),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 25.0),
                  child: TextFormField(
                    style: TextStyle(color: Color(0xff811a41)),
                    minLines: 5,
                    maxLines: 5,
                    obscureText: false,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff811a41))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff811a41))),
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
                            style: TextStyle(color: Color(0xff811a41)),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff811a41))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff811a41))),
                                labelText: 'Original Price',
                                labelStyle: TextStyle(
                                  color: Color(0xff811a41),
                                ))),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      new Flexible(
                        child: new TextFormField(
                            style: TextStyle(color: Color(0xff811a41)),
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff811a41))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff811a41))),
                                labelText: 'Discount Price',
                                labelStyle:
                                    TextStyle(color: Color(0xff811a41)))),
                      ),
                    ],
                  ),
                ),
              ),
              selectcategory(),
              checklist(),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
                child: Container(
                    height: 50,
                    width: 150,
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Color(0xff811a41),
                      onPressed: () {
                        // Respond to button press
                      },
                      child: Text('Add Item'),
                    )),
              )
            ],
          ),
        ));
  }
}

class selectcategory extends StatefulWidget {
  @override
  _selectcategoryState createState() => _selectcategoryState();
}

class _selectcategoryState extends State<selectcategory> {
  int _value = null;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                value: _value,
                items: [
                  DropdownMenuItem(
                    child: Text("Starters",
                        style: TextStyle(color: Color(0xff811a41))),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("Main Course",
                        style: TextStyle(color: Color(0xff811a41))),
                    value: 2,
                  ),
                  DropdownMenuItem(
                      child: Text("Deserts",
                          style: TextStyle(color: Color(0xff811a41))),
                      value: 3),
                  DropdownMenuItem(
                      child: Text("Beverages",
                          style: TextStyle(color: Color(0xff811a41))),
                      value: 4)
                ],
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                }),
          ),
        ),
      ),
    );
  }
}

class checklist extends StatefulWidget {
  @override
  _checklistState createState() => _checklistState();
}

class _checklistState extends State<checklist> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return (CheckboxListTile(
      title: Text("Special Dish", style: TextStyle(color: Color(0xff811a41))),
      value: _checked,
      onChanged: (newValue) {
        setState(() {
          _checked = newValue;
        });
      },
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: new Color(0xff811a41), //  <-- leading Checkbox
    ));
  }
}
