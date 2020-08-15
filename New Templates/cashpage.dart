import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: cashpage(),
  ));
}

class cashpage extends StatefulWidget{
  _cashpageState createState() => _cashpageState();
}

class _cashpageState extends State<cashpage>{
  int selectedpositon=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Center(child: Text('Business Insights',style: TextStyle(color: Colors.black,fontSize: 22),)),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width/2,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:8.0,right: 8.0,top: 20.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),),
                    color: Color(0xff811a41),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:10.0,top: 10.0,bottom: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Text('Today',style: TextStyle(fontSize: MediaQuery.of(context).textScaleFactor*15,color: Color(0xffe5e5e5)),),
                              SizedBox(height: 5,),
                              Text('₹ 100',style: TextStyle(fontSize: 25,color: Colors.white),),
                              SizedBox(height: 5,),
                              Text('5 orders',style: TextStyle(fontSize: MediaQuery.of(context).textScaleFactor*15,color: Color(0xffe5e5e5)),),
                            ],
                          ),
                        ),
                        Divider(color: Colors.white,height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left:10.0,top: 10.0,bottom: 8.0),
                          child: IntrinsicHeight(
                            child: Row(
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('This week: 20-27Apr',style: TextStyle(fontSize: MediaQuery.of(context).textScaleFactor*15,color: Color(0xffe5e5e5)),),
                                    SizedBox(height: 5,),
                                    Text('₹ 9,418',style: TextStyle(fontSize: 25,color: Colors.white),),
                                    SizedBox(height: 5,),
                                    Text('36 orders',style: TextStyle(fontSize: MediaQuery.of(context).textScaleFactor*15,color: Color(0xffe5e5e5)),),
                                  ],
                                ),
                                VerticalDivider(color: Colors.white,width: 23.5,thickness: 0.8,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('This month: 01-31Apr',style: TextStyle(fontSize: MediaQuery.of(context).textScaleFactor*15,color: Color(0xffe5e5e5)),),
                                    SizedBox(height: 5,),
                                    Text('₹ 1,693849',style: TextStyle(fontSize: 25,color: Colors.white),),
                                    SizedBox(height: 5,),
                                    Text('580 orders',style: TextStyle(fontSize: MediaQuery.of(context).textScaleFactor*15,color: Color(0xffe5e5e5)),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                ),
                Divider(color: Colors.black,height: 60,thickness: 0.7,),
                Padding(
                  padding: const EdgeInsets.only(left:14.0,bottom: 8.0),
                  child: Align(alignment: Alignment.centerLeft,child: Text('History',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:38.0),
                  child: ListTile(
                    title: Text('January',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Text('₹ 18,000.00',style: TextStyle(fontSize: 16,color: Colors.black),),
                    ),
                  ),
                ),
                Divider(color: Colors.black,height: 10,thickness: 0.7,indent: 50,endIndent: 50,),
                Padding(
                  padding: const EdgeInsets.only(left:38.0),
                  child: ListTile(
                    title: Text('February',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Text('₹ 20,000.00',style: TextStyle(fontSize: 16,color: Colors.black),),
                    ),
                  ),
                ),
                Divider(color: Colors.black,height: 10,thickness: 0.7,indent: 50,endIndent: 50,),
                Padding(
                  padding: const EdgeInsets.only(left:38.0),
                  child: ListTile(
                    title: Text('March',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Text('₹ 19,000.00',style: TextStyle(fontSize: 16,color: Colors.black),),
                    ),
                  ),
                ),
                Divider(color: Colors.black,height: 10,thickness: 0.7,indent: 50,endIndent: 50,),
                Padding(
                  padding: const EdgeInsets.only(left:38.0),
                  child: ListTile(
                    title: Text('April',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Text('₹ 18,000.00',style: TextStyle(fontSize: 16,color: Colors.black),),
                    ),
                  ),
                ),
              ],
            ),
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
