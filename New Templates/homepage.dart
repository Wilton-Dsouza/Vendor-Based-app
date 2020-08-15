import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Menu(),
  ));
}

class Menu extends StatefulWidget {
  _Menu createState() => _Menu();
}

class _Menu extends State<Menu> {
  int selectedpositon=0;
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
                                            style: TextStyle(fontSize: 17),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 135.0),
                                        child: Row(
                                          children: <Widget>[
                                            IconButton(
                                              icon: Icon(Icons.folder_open),
                                            ),
                                            Text('Open',
                                                style: TextStyle(fontSize: 17))
                                          ],
                                        ),
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
                                            style: TextStyle(fontSize: 17),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 135.0),
                                        child: Row(
                                          children: <Widget>[
                                            IconButton(
                                              icon: Icon(Icons.folder_open),
                                            ),
                                            Text('Open',
                                                style: TextStyle(fontSize: 17))
                                          ],
                                        ),
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
                                  '#9197',
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              Divider(
                                color: Colors.black45,
                              ),
                              Row(
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
                                            style: TextStyle(fontSize: 17),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 135.0),
                                        child: Row(
                                          children: <Widget>[
                                            IconButton(
                                              icon: Icon(Icons.folder_open),
                                            ),
                                            Text('Open',
                                                style: TextStyle(fontSize: 17))
                                          ],
                                        ),
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
                                  '#9998',
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              Divider(
                                color: Colors.black45,
                              ),
                              Row(
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
                                            style: TextStyle(fontSize: 17),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 135.0),
                                        child: Row(
                                          children: <Widget>[
                                            IconButton(
                                              icon: Icon(Icons.folder_open),
                                            ),
                                            Text('Open',
                                                style: TextStyle(fontSize: 17))
                                          ],
                                        ),
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
          floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xff811a41),
            onPressed: (){},
            child: Icon(Icons.add),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),

            child: Container(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    TabItem1(text:'Home',icon: Icons.home,isSelected: selectedpositon==0,onTap: (){
                      setState(() {
                        selectedpositon=0;
                      });
                    },),
                    TabItem1(text:'Items',icon: Icons.restaurant_menu,isSelected: selectedpositon==1,onTap: (){
                      setState(() {
                        selectedpositon=1;
                      });
                    },),
                    SizedBox(width: 5,),
                    TabItem1(text:'Business',icon: Icons.attach_money,isSelected: selectedpositon==2,onTap: (){
                      setState(() {
                        selectedpositon=2;
                      });
                    },),
                    TabItem1(text:'Profile',icon: Icons.person,isSelected: selectedpositon==3,onTap: (){
                      setState(() {
                        selectedpositon=3;
                      });
                    },)
                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}

class TabItem1 extends StatelessWidget{
  final String text;
  final IconData icon;
  final bool isSelected;
  final Function onTap;

  const TabItem1({Key key,this.text,this.icon,this.isSelected,this.onTap}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0,6,0,6),
        child: Column(
          children: <Widget>[
            Icon(icon,color: isSelected ? Color(0xff811a41):Colors.grey,),
            Text(text,style: TextStyle(color: isSelected ? Color(0xff811a41):Colors.grey,fontWeight: isSelected ? FontWeight.w600:FontWeight.normal),),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}

