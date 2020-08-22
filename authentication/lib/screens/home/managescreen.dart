import 'package:flutter/material.dart';
import 'package:login_app/screens/home/additem.dart';
import 'package:login_app/screens/home/cashpage.dart';
import 'package:login_app/screens/home/homepage.dart';
import 'package:login_app/screens/home/menuitem.dart';
import 'package:login_app/screens/home/profilepage.dart';

class ManageScreen extends StatefulWidget {
  _ManageScreenState createState() => _ManageScreenState();
}

class _ManageScreenState extends State<ManageScreen> {
  int navBarTracker = 0;
  final tabBody = [
    Menu(),
    MenuItems(),
    CashPage(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    final tabFloatingButton = [
      null,
      FloatingActionButton(
        backgroundColor: Color(0xff811a41),
        child: Icon(Icons.add, color: Colors.white),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddItem()),
          );
        },
      ),
      null,
      null
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: tabBody[navBarTracker],
      floatingActionButton: tabFloatingButton[navBarTracker],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
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
            backgroundColor: Color(0xff811a41),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.restaurant_menu,
              size: 30,
            ),
            backgroundColor: Color(0xff811a41),
            title: Text('Items'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.attach_money,
              size: 30,
            ),
            backgroundColor: Color(0xff811a41),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30,
            ),
            backgroundColor: Color(0xff811a41),
            title: Text('Account'),
          ),
        ],
      ),
    );
  }
}
