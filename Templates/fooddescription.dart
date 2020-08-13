import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: description(),
  ));
}

class description extends StatefulWidget{
  _descriptionState createState() => _descriptionState();
}

class _descriptionState extends State<description>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom:20.0),
          child: Column(
            children: <Widget>[
              ClipPath(
                child: Container(height: 300.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://static.toiimg.com/thumb/resizemode-4,width-1600,height-900,msid-63231884/5-easy-chicken-starters.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right:30.0,left: 8.0,top: 10.0),
                      child: Text('Chicken Majestic',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                      ),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:8.0,top: 10.0),
                    child: FloatingActionButton(
                      backgroundColor: Color(0xff811a41),
                      onPressed: (){},
                      child: Icon(Icons.edit),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0,top: 10.0),
                child: Row(
                  children: <Widget>[
                    Text('Price: ₹2000',
                      style: TextStyle(
                          color: Color(0xff838383),
                          fontSize: 15
                      ),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0,top: 8.0),
                child: Row(
                  children: <Widget>[
                    Text('Discounted Price: ₹1700',
                      style: TextStyle(
                          color: Color(0xff838383),
                          fontSize: 15
                      ),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0,top: 8.0),
                child: Row(
                  children: <Widget>[
                    Text('Category: Starter',
                      style: TextStyle(
                          color: Color(0xff838383),
                          fontSize: 15
                      ),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0,top: 15.0),
                child: Row(
                  children: <Widget>[
                    Text('Description',
                      style: TextStyle(
                          fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0,top: 8.0),
                child: Wrap(
                  children: <Widget>[
                    Text('This dish has its origins in Hyderabad, India. Chicken Majestic is a dry chicken dish marinated with Indian spices with an appealing look. Elders or youngers this chicken dish always tempt you to have more. A huge gettogether or small parties this is amazing starter dish to serve your guests.',
                      style: TextStyle(
                          color: Color(0xff838383),
                          fontSize: 17
                      ),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:8.0,top: 8.0),
                child: Wrap(
                  children: <Widget>[
                    Text('Chicken Majestic is a popular Indian dry chicken appetizer recipe that is made by deep frying thin strips of chicken (3″ long) & than sauteing them in an extremely delicious sauce until just coated. The sauce is made from yogurt & a few other spices.This easy chicken starter is believed to have originated in Hyderabad, Andhra Pradesh.',
                      style: TextStyle(
                          color: Color(0xff838383),
                          fontSize: 17
                      ),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
