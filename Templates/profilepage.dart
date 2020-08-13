import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: profile()
  ));
}

class profile extends StatefulWidget{
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  int selectedpositon=0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children:<Widget>[
            Padding(
              padding: const EdgeInsets.only(left:8.0,right: 8.0,top: 40.0),
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),),
                  color: Color(0xff811a41),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:10.0,top: 10.0,bottom: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top:10.0),
                                  child: CircleAvatar(
                                    radius: 50.0,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:10.0),
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
                                  padding: const EdgeInsets.only(top:8.0),
                                  child: Text(
                                    'rachel@gmail.com',
                                    style: TextStyle(
                                      color:Colors.white,
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
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:15.0),
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color:Colors.black,
                ),
                title:Text(
                  'My Details',
                  style: TextStyle(
                    color:Colors.black,
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
            Divider(thickness:0.75,indent: 15,endIndent: 15,),
            ListTile(
              leading: Icon(
                Icons.payment,
                color:Colors.black,
              ),
              title:Text(
                'Payment Details',
                style: TextStyle(
                  color:Colors.black,
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
            Divider(thickness:0.75,indent: 15,endIndent: 15,),
            ListTile(
              leading: Icon(
                Icons.remove_red_eye,
                color:Colors.black,
              ),
              title: Text(
                'Preview',
                style: TextStyle(
                  color:Colors.black,
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
            Divider(thickness:0.75,indent: 15,endIndent: 15,),
            ListTile(
              leading: Icon(
                Icons.lock_open,
                color:Colors.black,
              ),
              title:Text(
                'Logout',
                style: TextStyle(
                  color:Colors.black,
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
            Divider(thickness:0.75,indent: 15,endIndent: 15,),
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