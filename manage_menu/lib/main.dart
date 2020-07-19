import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
//    title: 'Manage Menu',
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
        title: Center(
          child: Text('Manage Menu'),
        ),
      ),
//      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Clicked');
        },
        backgroundColor: Colors.white,
        child: Icon(Icons.add, color: new Color(0xFF74012c)),
      ),
      body: Column(
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

//      body: ListView(
//        children: <Widget>[
//          Container(
//            height: 110,
//            child: Card(
//              shape: RoundedRectangleBorder(
//                borderRadius: BorderRadius.circular(10),
//              ),
//              child: Center(
//                child: ExpansionTile(
//                  leading: ClipRRect(
//                    borderRadius: BorderRadius.circular(15.0),
//                    child: Container(
//                      alignment: Alignment.center,
//                      width: 100,
//                      height: 200,
//                      decoration: BoxDecoration(
//                        image: DecorationImage(
//                            image: NetworkImage(
//                                'https://tribune-reloaded.s3.amazonaws.com/media/images/1590373-biryani-1513939158/1590373-biryani-1513939158.gif'),
//                            fit: BoxFit.fill),
//                      ),
//                    ),
//                  ),
//                  title: Text("Name of the food Item"),
//                  children: <Widget>[
//                    SizedBox(
//                      height: 20,
//                    ),
//                    Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceAround,
//                      children: <Widget>[
//                        Icon(Icons.edit),
//                        Icon(Icons.delete),
//                        Icon(Icons.clear),
//                      ],
//                    )
//                  ],
//                ),
//              ),
//            ),
//          ),
//        ],
//      ),
    );
  }
}
