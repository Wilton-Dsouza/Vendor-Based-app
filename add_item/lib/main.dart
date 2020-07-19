import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    title: 'Add Item',
    home: addItem(),
  ));
}



class addItem extends StatelessWidget {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: new Color(0xFF74012c),
      appBar: AppBar(
        backgroundColor: new Color(0xFF74012c),
        title: Text('Add Item'),
      ),
      drawer: Drawer(),
      body: ListView(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          FloatingActionButton(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.add,color: new Color(0xFF74012c)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('Insert Image',style: TextStyle(color: Colors.white)),
                          )
                        ],
                      ),
                    )
                  ]
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                maxLines: 1,
                obscureText: false,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  border: OutlineInputBorder(),
                  labelText: 'Name of the Dish',
                  labelStyle: TextStyle(color: Colors.white)
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25.0,0.0,25.0,25.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                minLines: 5,
                maxLines: 5,
                obscureText: false,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  labelText: 'Description',
                    labelStyle: TextStyle(color: Colors.white)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25.0,0.0,25.0,25.0),
            child: Container(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Flexible(
                    child: new TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          labelText: 'Original Price', labelStyle: TextStyle(color: Colors.white,)
                        )
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  new Flexible(
                    child: new TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                          labelText: 'Discount Price',
                            labelStyle: TextStyle(color: Colors.white)
                        )
                    ),
                  ),
                ],
              ),
            ),
          ),
          selectcategory(),
          checklist(),
          Padding(
            padding: const EdgeInsets.fromLTRB(130,5,130,15),
            child: Container(
              child: RaisedButton(
                textColor: Colors.white,
                color: Color(0xFF6200EE),
                onPressed: () {
                  // Respond to button press
                },
                child: Text('Add Item'),
              )
            ),
          )
        ],
      )
    );
  }
}

class selectcategory extends StatefulWidget{
  @override
  _selectcategoryState createState() => _selectcategoryState();
}

class _selectcategoryState extends State<selectcategory> {
  int _value = null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25.0,0.0,25.0,25.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: Colors.white)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DropdownButtonHideUnderline(
            child: Container(
              child: DropdownButton(
                  hint: Text('Select Category',style: TextStyle(color: Colors.white)),
                  dropdownColor: new Color(0xFF74012c),
                  value: _value,
                  items: [
                    DropdownMenuItem(
                      child: Text("Starters",style: TextStyle(color: Colors.white)),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text("Main Course",style: TextStyle(color: Colors.white)),
                      value: 2,
                    ),
                    DropdownMenuItem(
                        child: Text("Deserts",style: TextStyle(color: Colors.white)),
                        value: 3
                    ),
                    DropdownMenuItem(
                        child: Text("Beverages",style: TextStyle(color: Colors.white)),
                        value: 4
                    )
                  ],
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  }),
            ),
          ),
        ),
      ),
    );
  }
}

class checklist extends StatefulWidget{
  @override
  _checklistState createState() => _checklistState();
}

class _checklistState extends State<checklist>{
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return (
        CheckboxListTile(
          title: Text("Special Dish",style: TextStyle(color: Colors.white)),
          value: _checked,
          onChanged: (newValue) {
            setState(() {
              _checked = newValue;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: new Color(0xFF74012c),//  <-- leading Checkbox
        )
    );
  }
}