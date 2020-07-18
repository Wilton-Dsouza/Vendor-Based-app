import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Manage Menu',
    home: ManageScreen(),
  ));
}

class ManageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: new Color(0xFF74012c),
      appBar: AppBar(
        backgroundColor: new Color(0xFF74012c),
        title: Text('Manage Menu'),
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(Icons.add,color: new Color(0xFF74012c)),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 110,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: ExpansionTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  width: 100,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://images.edexlive.com/uploads/user/imagelibrary/2020/3/17/original/icecream.jpg'),
                        fit: BoxFit.fill
                    ),
                  ),
                ),
              ),
                  title: Text("Name of the food Item"),
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                            Icons.edit
                        ),
                        Icon(
                            Icons.delete
                        ),
                        Icon(
                            Icons.clear
                        ),
                      ],
                    )

                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 110,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: ExpansionTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://tribune-reloaded.s3.amazonaws.com/media/images/1590373-biryani-1513939158/1590373-biryani-1513939158.gif'),
                        fit: BoxFit.fill
                    ),
                  ),
                ),
              ),
                  title: Text("Name of the food Item"),
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                            Icons.edit
                        ),
                        Icon(
                            Icons.delete
                        ),
                        Icon(
                            Icons.clear
                        ),
                      ],
                    )

                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 110,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: ExpansionTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage('https://www3.pictures.zimbio.com/mp/wwj1hrnad01x.jpg'),
                            fit: BoxFit.fill
                        ),
                      ),
                    ),
                  ),
                  title: Text("Name of the food Item"),
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                            Icons.edit
                        ),
                        Icon(
                            Icons.delete
                        ),
                        Icon(
                            Icons.clear
                        ),
                      ],
                    )

                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 110,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: ExpansionTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://tribune-reloaded.s3.amazonaws.com/media/images/1590373-biryani-1513939158/1590373-biryani-1513939158.gif'),
                        fit: BoxFit.fill
                    ),
                  ),
                ),
              ),
                  title: Text("Name of the food Item"),
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                            Icons.edit
                        ),
                        Icon(
                            Icons.delete
                        ),
                        Icon(
                            Icons.clear
                        ),
                      ],
                    )

                  ],
                ),
              ),
            ),
          ),
        ],
      )

    );
  }
}



