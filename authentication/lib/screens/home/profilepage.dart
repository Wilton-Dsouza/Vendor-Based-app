import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/services/auth.dart';

class Profile extends StatefulWidget {
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final AuthService _auth = AuthService();
  int selectedpositon = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 40.0),
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Color(0xff811a41),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, top: 10.0, bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: CircleAvatar(
                                  radius: 50.0,
                                  backgroundColor: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  'Rachel Gwen',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  'rachel@gmail.com',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    letterSpacing: 1.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.black,
              ),
              title: Text(
                'My Details',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: IconButton(
                color: Colors.black,
                icon: Icon(Icons.arrow_forward_ios),
                iconSize: 17,
              ),
            ),
          ),
          Divider(
            thickness: 0.75,
            indent: 15,
            endIndent: 15,
          ),
          ListTile(
            leading: Icon(
              Icons.payment,
              color: Colors.black,
            ),
            title: Text(
              'Payment Details',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: IconButton(
              color: Colors.black,
              icon: Icon(Icons.arrow_forward_ios),
              iconSize: 17,
            ),
          ),
          Divider(
            thickness: 0.75,
            indent: 15,
            endIndent: 15,
          ),
          ListTile(
            leading: Icon(
              Icons.remove_red_eye,
              color: Colors.black,
            ),
            title: Text(
              'Preview',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: IconButton(
              color: Colors.black,
              icon: Icon(Icons.arrow_forward_ios),
              iconSize: 17,
            ),
          ),
          Divider(
            thickness: 0.75,
            indent: 15,
            endIndent: 15,
          ),
          GestureDetector(
            onTap: () async {
              await _auth.signOut(); //we dont have to return anything cause our
              // stream will get null value when this is complete and take us to login page
            },
            child: ListTile(
              leading: Icon(
                Icons.lock_open,
                color: Colors.black,
              ),
              title: Text(
                'Logout',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: IconButton(
                color: Colors.black,
                icon: Icon(Icons.arrow_forward_ios),
                iconSize: 17,
              ),
            ),
          ),
          Divider(
            thickness: 0.75,
            indent: 15,
            endIndent: 15,
          ),
        ],
      ),
    );
  }
}

class TabItem1 extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isSelected;
  final Function onTap;

  const TabItem1({Key key, this.text, this.icon, this.isSelected, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 6, 0, 6),
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              color: isSelected ? Color(0xff811a41) : Colors.grey,
            ),
            Text(
              text,
              style: TextStyle(
                  color: isSelected ? Color(0xff811a41) : Colors.grey,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal),
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
