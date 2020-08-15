import 'package:flutter/material.dart';
import 'package:main_menu/homepage.dart';
import 'package:main_menu/menuitem.dart';
import 'package:main_menu/cashpage.dart';
import 'package:main_menu/profilepage.dart';
import 'package:main_menu/additem.dart';

void main() {
  runApp(MaterialApp(
    home: ManageScreen(),
  ));
}

class ManageScreen extends StatefulWidget{
  _ManageScreenState createState() => _ManageScreenState();
}

class _ManageScreenState extends State<ManageScreen>{
  int navBarTracker = 0;
  final tabBody = [
    Menu(),
    menuitems(),
    cashpage(),
    profile()
  ];

  @override
  Widget build(BuildContext context) {
    final tabFloatingButton = [
      FloatingActionButton(
        backgroundColor: Color(0xff811a41),
        child: Icon(Icons.add, color: Colors.white),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return additem();
            }),
          );
        },
      ),
      FloatingActionButton(
        backgroundColor: Color(0xff811a41),
        child: Icon(Icons.add, color: Colors.white),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return additem();
            }),
          );
        },
      ),
      FloatingActionButton(
        backgroundColor: Color(0xff811a41),
        child: Icon(Icons.add, color: Colors.white),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return additem();
            }),
          );
        },
      ),
      FloatingActionButton(
        backgroundColor: Color(0xff811a41),
        child: Icon(Icons.add, color: Colors.white),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return additem();
            }),
          );
        },
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: tabBody[navBarTracker],
      floatingActionButton: tabFloatingButton[navBarTracker],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: new Color(0xff811a41),
        unselectedItemColor: Colors.grey,
        currentIndex: navBarTracker,
        onTap: (index) {
          setState(() {
            navBarTracker = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            backgroundColor: Colors.white,
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.restaurant_menu,
              size: 30,
            ),
            backgroundColor: Colors.white,
            title: Text('Items'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.attach_money,
              size: 30,
            ),
            backgroundColor: Colors.white,
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30,
            ),
            backgroundColor: Colors.white,
            title: Text('Account'),
          ),
        ],
      ),
    );
  }
}


