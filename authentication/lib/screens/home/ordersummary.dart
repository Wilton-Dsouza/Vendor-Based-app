import 'package:flutter/material.dart';

class OrderSummary extends StatefulWidget {
  _OrderSummaryState createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'Order Summary',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 28, left: 15),
                  child: Text(
                    'Name of the Customer',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
            Wrap(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.only(top: 11, left: 15, bottom: 10.0),
                  child: Text(
                    'Little Flower Compound \nKudripadav House and Post via Moodbidri, Pin-574227',
                    style: TextStyle(fontSize: 17, color: Color(0xffa9a9a9)),
                  ),
                )
              ],
            ),
            Divider(
              thickness: 0.55,
              color: Colors.black,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 11, left: 15),
                  child: Text(
                    'Orders',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: DataTable(
                columnSpacing: 50,
                dividerThickness: 0,
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Name of Item',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Quantity',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Price',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black),
                    ),
                  ),
                ],
                rows: <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text(
                        'Grocery',
                        style: TextStyle(fontSize: 17),
                      )),
                      DataCell(Text(
                        '2',
                        style: TextStyle(fontSize: 17),
                      )),
                      DataCell(Text(
                        '110',
                        style: TextStyle(fontSize: 17),
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text(
                        'Vegetables',
                        style: TextStyle(fontSize: 17),
                      )),
                      DataCell(Text(
                        '1',
                        style: TextStyle(fontSize: 17),
                      )),
                      DataCell(Text(
                        '100',
                        style: TextStyle(fontSize: 17),
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text(
                        'Fruits',
                        style: TextStyle(fontSize: 17),
                      )),
                      DataCell(Text(
                        '4',
                        style: TextStyle(fontSize: 17),
                      )),
                      DataCell(Text(
                        '200',
                        style: TextStyle(fontSize: 17),
                      )),
                    ],
                  ),
                  DataRow(cells: <DataCell>[
                    DataCell(Text(
                      'Total',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    )),
                    DataCell(Text(
                      '7',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    )),
                    DataCell(Text(
                      '410',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    )),
                  ])
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 100,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      color: Color(0xff811a41),
                      onPressed: () {},
                      child: Text(
                        'Accept',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      color: Color(0xff811a41),
                      onPressed: () {},
                      child: Text(
                        'Reject',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}
