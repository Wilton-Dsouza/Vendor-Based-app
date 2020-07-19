import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:order_list/additem.dart';

void main() {
  runApp(MaterialApp(
    title: 'Order List',
    home: Orderlist(),
  ));
}

class Orderlist extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: new Color(0xFF74012c),
      appBar: AppBar(
        backgroundColor: new Color(0xFF74012c),
        title: Text('Order List'),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0,10.0,0.0,0.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: new Color(0xFF9b013b),
                    border: Border.all(
                      color: new Color(0xFF9b013b),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: ListTile(
                    leading:Text('#442',style: TextStyle(fontSize: 25.0,color: Colors.white),),
                    title: Text("Customer Name",style: TextStyle(fontSize: 23.0,color: Colors.white),),
                    subtitle: Text("Total Price",style: TextStyle(fontSize: 18.0,color: Colors.white)),
                  ),
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
                  leading:Text('#443',style: TextStyle(fontSize: 25.0,color: Colors.white),),
                  title: Text("Customer Name",style: TextStyle(fontSize: 23.0,color: Colors.white),),
                  subtitle: Text("Total Price",style: TextStyle(fontSize: 18.0,color: Colors.white)),
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
                  leading:Text('#444',style: TextStyle(fontSize: 25.0,color: Colors.white),),
                  title: Text("Customer Name",style: TextStyle(fontSize: 23.0,color: Colors.white),),
                  subtitle: Text("Total Price",style: TextStyle(fontSize: 18.0,color: Colors.white)),
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
                  leading:Text('#445',style: TextStyle(fontSize: 25.0,color: Colors.white),),
                  title: Text("Customer Name",style: TextStyle(fontSize: 23.0,color: Colors.white),),
                  subtitle: Text("Total Price",style: TextStyle(fontSize: 18.0,color: Colors.white)),
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(Icons.add,color: new Color(0xFF74012c)),
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context) {
            return addItem();
          }));
        },
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: new Color(0xFF9b013b),
        child: Container(
            height:50.0,
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.content_paste,size: 30,color: Colors.white),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) {
                      return Orderlist();
                    }));
                  },
                ),
                IconButton(
                  icon: Icon(Icons.restaurant_menu,size: 30,color: Colors.white),
                ),
                IconButton(
                  icon: Icon(Icons.attach_money,size: 30,color: Colors.white),
                  color: Colors.white,
                ),
                IconButton(
                  icon: Icon(Icons.person,size: 30,color: Colors.white),
                  color: Colors.white,
                ),
              ],
            ) ,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}