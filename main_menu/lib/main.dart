import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:manage_menu/additem.dart';

void main() {
  runApp(MaterialApp(
//    title: 'Manage Menu',
    home: ManageScreen(),
  ));
}

class ManageScreen extends StatefulWidget {
  @override
  _ManageScreenState createState() => _ManageScreenState();
}

class _ManageScreenState extends State<ManageScreen> {
  int navBarTracker = 0;

  final tabBody = [
    ListView(
      children: <Widget>[
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              decoration: BoxDecoration(
                color: new Color(0xFF9b013b),
                border: Border.all(
                  color: new Color(0xFF9b013b),
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: ListTile(
                leading: Text(
                  '#442',
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
                title: Text(
                  "Customer Name",
                  style: TextStyle(fontSize: 23.0, color: Colors.white),
                ),
                subtitle: Text("Total Price",
                    style: TextStyle(fontSize: 18.0, color: Colors.white)),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            Container(
              decoration: BoxDecoration(
                color: new Color(0xFF9b013b),
                border: Border.all(
                  color: new Color(0xFF9b013b),
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: ListTile(
                leading: Text(
                  '#443',
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
                title: Text(
                  "Customer Name",
                  style: TextStyle(fontSize: 23.0, color: Colors.white),
                ),
                subtitle: Text("Total Price",
                    style: TextStyle(fontSize: 18.0, color: Colors.white)),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            Container(
              decoration: BoxDecoration(
                color: new Color(0xFF9b013b),
                border: Border.all(
                  color: new Color(0xFF9b013b),
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: ListTile(
                leading: Text(
                  '#444',
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
                title: Text(
                  "Customer Name",
                  style: TextStyle(fontSize: 23.0, color: Colors.white),
                ),
                subtitle: Text("Total Price",
                    style: TextStyle(fontSize: 18.0, color: Colors.white)),
              ),
            ),
            Divider(
              color: Colors.white,
            ),
            Container(
              decoration: BoxDecoration(
                color: new Color(0xFF9b013b),
                border: Border.all(
                  color: new Color(0xFF9b013b),
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: ListTile(
                leading: Text(
                  '#445',
                  style: TextStyle(fontSize: 25.0, color: Colors.white),
                ),
                title: Text(
                  "Customer Name",
                  style: TextStyle(fontSize: 23.0, color: Colors.white),
                ),
                subtitle: Text("Total Price",
                    style: TextStyle(fontSize: 18.0, color: Colors.white)),
              ),
            ),
          ],
        )
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Card(
          color: new Color(0x93013b),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          child: ExpansionTile(
            leading: Image.network(
                'https://www.bbcgoodfood.com/sites/default/files/baked-camembert-with-bacon-wrapped-breadsticks_0.jpg'),
            title: Text(
              'Starters',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            subtitle: Text(
              'Number of Items: 3',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.clear,
                    color: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ),
        Card(
          color: new Color(0x93013b),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          child: ExpansionTile(
            leading: Image.network(
                'https://www.bbcgoodfood.com/sites/default/files/baked-camembert-with-bacon-wrapped-breadsticks_0.jpg'),
            title: Text(
              'Starters',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            subtitle: Text(
              'Number of Items: 3',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.clear,
                    color: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ),
        Card(
          color: new Color(0x93013b),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          child: ExpansionTile(
            leading: Image.network(
                'https://www.bbcgoodfood.com/sites/default/files/baked-camembert-with-bacon-wrapped-breadsticks_0.jpg'),
            title: Text(
              'Starters',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            subtitle: Text(
              'Number of Items: 3',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.clear,
                    color: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ),
    Center(
      child: Text('2'),
    ),
    Center(
      child: Text('3'),
    ),
  ];

  final tabAppbar = [
    AppBar(
      backgroundColor: new Color(0xFF74012c),
      title: Center(
        child: Text('Orders List'),
      ),
    ),
    AppBar(
      backgroundColor: new Color(0xFF74012c),
      title: Center(
        child: Text('Manage Menu'),
      ),
    ),
    AppBar(
      backgroundColor: new Color(0xFF74012c),
      title: Center(
        child: Text('Cash'),
      ),
    ),
    AppBar(
      backgroundColor: new Color(0xFF74012c),
      title: Center(
        child: Text('Account'),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final tabFloatingButton = [
      FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(Icons.add, color: new Color(0xFF74012c)),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return addItem();
            }),
          );
        },
      ),
      FloatingActionButton(
        onPressed: () {
          print('Clicked');
        },
        backgroundColor: Colors.white,
        child: Icon(Icons.add, color: new Color(0xFF74012c)),
      ),
      null,
      null,
    ];
    return Scaffold(
      backgroundColor: new Color(0xFF74012c),
      appBar: tabAppbar[navBarTracker],
      body: tabBody[navBarTracker],
      floatingActionButton: tabFloatingButton[navBarTracker],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navBarTracker,
        onTap: (index) {
          setState(() {
            navBarTracker = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.content_paste,
              size: 30,
              color: Colors.white,
            ),
            backgroundColor: new Color(0xFF9b013b),
            title: Text('Orders'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.restaurant_menu,
              size: 30,
            ),
            backgroundColor: new Color(0xFF9b013b),
            title: Text('Items'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.attach_money,
              size: 30,
            ),
            backgroundColor: new Color(0xFF9b013b),
            title: Text('Cash'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30,
            ),
            backgroundColor: new Color(0xFF9b013b),
            title: Text('Account'),
          ),
        ],
      ),
    );
  }
}
