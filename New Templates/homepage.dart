import 'package:flutter/material.dart';


class Menu extends StatefulWidget {
  _Menu createState() => _Menu();
}

class _Menu extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            'Home',
            style: TextStyle(fontSize: 25,color: Colors.black),
          )),
          backgroundColor: Colors.white,
          bottom: TabBar(
            indicatorColor: Color(0xff811a41),
            labelStyle: TextStyle(fontSize: 20),
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: 'Live Orders',
              ),
              Tab(
                text: 'Past Orders',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    height: 130,
                    width: 400,
                    child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Center(
                          child: ListView(
                            children: <Widget>[
                              ListTile(
                                leading: Text(
                                  '#9199',
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              Divider(
                                color: Colors.black45,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(
                                                Icons.check_circle_outline),
                                          ),
                                          Text(
                                            'Mark Ready',
                                            style: TextStyle(fontSize:MediaQuery.of(context).textScaleFactor*15),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(Icons.folder_open),
                                          ),
                                          Text('Open',
                                              style: TextStyle(fontSize:MediaQuery.of(context).textScaleFactor*15))
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    height: 130,
                    width: 400,
                    child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Center(
                          child: ListView(
                            children: <Widget>[
                              ListTile(
                                leading: Text(
                                  '#9200',
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              Divider(
                                color: Colors.black45,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(
                                                Icons.check_circle_outline),
                                          ),
                                          Text(
                                            'Mark Ready',
                                            style: TextStyle(fontSize:MediaQuery.of(context).textScaleFactor*15),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(Icons.folder_open),
                                          ),
                                          Text('Open',
                                              style: TextStyle(fontSize:MediaQuery.of(context).textScaleFactor*15))
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    height: 130,
                    width: 400,
                    child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Center(
                          child: ListView(
                            children: <Widget>[
                              ListTile(
                                leading: Text(
                                  '#9787',
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              Divider(
                                color: Colors.black45,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(
                                                Icons.check_circle_outline),
                                          ),
                                          Text(
                                            'Mark Ready',
                                            style: TextStyle(fontSize:MediaQuery.of(context).textScaleFactor*15),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(Icons.folder_open),
                                          ),
                                          Text('Open',
                                              style: TextStyle(fontSize:MediaQuery.of(context).textScaleFactor*15))
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    height: 130,
                    width: 400,
                    child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Center(
                          child: ListView(
                            children: <Widget>[
                              ListTile(
                                leading: Text(
                                  '#9589',
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              Divider(
                                color: Colors.black45,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(
                                                Icons.check_circle_outline),
                                          ),
                                          Text(
                                            'Mark Ready',
                                            style: TextStyle(fontSize:MediaQuery.of(context).textScaleFactor*15),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          IconButton(
                                            icon: Icon(Icons.folder_open),
                                          ),
                                          Text('Open',
                                              style: TextStyle(fontSize:MediaQuery.of(context).textScaleFactor*15))
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



