import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: registerpage4(),
  ));
}


class registerpage4 extends StatefulWidget{
  _registerpage4 createState() => _registerpage4();
}

class _registerpage4 extends State<registerpage4>{
  FocusNode _focusNode;

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
  }

  @override
  void initState() {
    super.initState();
    _focusNode = new FocusNode();
    _focusNode.addListener(_onOnFocusNodeEvent);
  }

  _onOnFocusNodeEvent() {
    setState(() {
      // Re-renders
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Card(
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0,25.0,0.0,0.0),
                    child:
                    Row(
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.arrow_back)),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Align(child: Text('Upload Pictures',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 10.0),
                    child: Container(
                      width: 250,
                      height: 50,
                      child: RaisedButton(
                        color: new Color(0xFF811a41),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Text('Icon Image', style: TextStyle(fontSize: 20,color: Colors.white)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 150.0, 20.0, 10.0),
                    child: Container(
                      width: 250,
                      height: 50,
                      child: RaisedButton(
                        color: new Color(0xFF811a41),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Text('Cover Photo', style: TextStyle(fontSize: 20,color: Colors.white)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 200.0, 20.0, 10.0),
                    child: Container(
                      width: 150,
                      height: 50,
                      child: RaisedButton(
                        color: new Color(0xFF811a41),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Text('Done', style: TextStyle(fontSize: 20,color: Colors.white)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}

