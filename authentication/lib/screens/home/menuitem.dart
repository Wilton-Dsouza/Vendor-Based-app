import 'package:flutter/material.dart';

class MenuItems extends StatefulWidget {
  _MenuItemsState createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  int selectedpositon = 0;
  bool isSwitched1 = false;
  bool isSwitched2 = true;
  final tabs = ['Soup', 'Starters', 'Rice', 'Beverage', 'Desert'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          title: Center(
              child: Text(
            'Manage Menu',
            style: TextStyle(color: Colors.black, fontSize: 23),
          )),
          backgroundColor: Colors.white,
          bottom: TabBar(
            unselectedLabelColor: Colors.black,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff811a41)),
            indicatorColor: Colors.white,
            isScrollable: true,
            labelColor: Colors.white,
            labelStyle: TextStyle(fontSize: 18),
            tabs: [
              for (final tab in tabs)
                Container(
                  margin: const EdgeInsets.only(right: 1.0),
                  height: 40,
                  child: Tab(text: tab),
                ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Padding(
            // Desert
            padding: const EdgeInsets.only(top: 10.0),
            child: ListView(
              children: <Widget>[
                Container(
                  height: 110,
                  width: 300,
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            width: 100,
                            height: 300,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://static01.nyt.com/images/2016/11/29/dining/recipelab-chick-noodle-still/recipelab-chick-noodle-still-mediumThreeByTwo440.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        title: Text(
                          "Veg Soup",
                          style: TextStyle(fontSize: 17),
                        ),
                        subtitle: Wrap(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Row(
                                children: <Widget>[
                                  IconTheme(
                                    data: IconThemeData(
                                      color: Colors.amber,
                                      size: 22,
                                    ),
                                    child: StarDisplay(value: 4),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    '₹ 2000',
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        trailing: Switch(
                          value: isSwitched2,
                          onChanged: (value) {
                            setState(() {
                              isSwitched2 = value;
                            });
                          },
                          activeColor: Color(0xff811a41),
                        ),
                        isThreeLine: true,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 110,
                  width: 300,
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            width: 100,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://www.inspiredtaste.net/wp-content/uploads/2018/10/Homemade-Vegetable-Soup-Recipe-2-1200.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        title: Text(
                          "Chicken Soup",
                          style: TextStyle(fontSize: 17),
                        ),
                        subtitle: Wrap(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Row(
                                children: <Widget>[
                                  IconTheme(
                                    data: IconThemeData(
                                      color: Colors.amber,
                                      size: 22,
                                    ),
                                    child: StarDisplay(value: 4),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    '₹ 2500',
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        trailing: Switch(
                          value: isSwitched1,
                          onChanged: (value) {
                            setState(() {
                              isSwitched1 = value;
                            });
                          },
                          activeColor: Color(0xff811a41),
                        ),
                        isThreeLine: true,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            //Starters
            padding: const EdgeInsets.only(top: 10.0),
            child: ListView(
              children: <Widget>[
                Container(
                  height: 110,
                  width: 300,
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            width: 100,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://i2.wp.com/yourfoodfantasy.com/wp-content/uploads/2017/11/Prawn-Starters-Recipe-Prawn-Skewers-Recipe-Your-Food-Fantasy.jpg?fit=740%2C497&ssl=1'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        title: Text(
                          "Prawn Skewers",
                          style: TextStyle(fontSize: 17),
                        ),
                        subtitle: Wrap(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Row(
                                children: <Widget>[
                                  IconTheme(
                                    data: IconThemeData(
                                      color: Colors.amber,
                                      size: 22,
                                    ),
                                    child: StarDisplay(value: 4),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    '₹ 2000',
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        trailing: Switch(
                          value: isSwitched1,
                          onChanged: (value) {
                            setState(() {
                              isSwitched1 = value;
                            });
                          },
                          activeColor: Color(0xff811a41),
                        ),
                        isThreeLine: true,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 110,
                  width: 300,
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            width: 100,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://static.toiimg.com/thumb/resizemode-4,width-1600,height-900,msid-63231884/5-easy-chicken-starters.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        title: Text(
                          "Chicken Starters",
                          style: TextStyle(fontSize: 17),
                        ),
                        subtitle: Wrap(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Row(
                                children: <Widget>[
                                  IconTheme(
                                    data: IconThemeData(
                                      color: Colors.amber,
                                      size: 22,
                                    ),
                                    child: StarDisplay(value: 4),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    '₹ 2500',
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        trailing: Switch(
                          value: isSwitched2,
                          onChanged: (value) {
                            setState(() {
                              isSwitched2 = value;
                            });
                          },
                          activeColor: Color(0xff811a41),
                        ),
                        isThreeLine: true,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            // Rice
            padding: const EdgeInsets.only(top: 10.0),
            child: ListView(
              children: <Widget>[
                Container(
                  height: 110,
                  width: 300,
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            width: 100,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2017/03/egg-fried-rice.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        title: Text(
                          "Veg Fried Rice",
                          style: TextStyle(fontSize: 17),
                        ),
                        subtitle: Wrap(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Row(
                                children: <Widget>[
                                  IconTheme(
                                    data: IconThemeData(
                                      color: Colors.amber,
                                      size: 22,
                                    ),
                                    child: StarDisplay(value: 4),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    '₹ 2000',
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        trailing: Switch(
                          value: isSwitched1,
                          onChanged: (value) {
                            setState(() {
                              isSwitched1 = value;
                            });
                          },
                          activeColor: Color(0xff811a41),
                        ),
                        isThreeLine: true,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 110,
                  width: 300,
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            width: 100,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://c.ndtvimg.com/2020-05/inr9r43o_curd-rice_625x300_29_May_20.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        title: Text(
                          "Chicken Fried Rice",
                          style: TextStyle(fontSize: 17),
                        ),
                        subtitle: Wrap(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Row(
                                children: <Widget>[
                                  IconTheme(
                                    data: IconThemeData(
                                      color: Colors.amber,
                                      size: 22,
                                    ),
                                    child: StarDisplay(value: 4),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    '₹ 2500',
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        trailing: Switch(
                          value: isSwitched2,
                          onChanged: (value) {
                            setState(() {
                              isSwitched2 = value;
                            });
                          },
                          activeColor: Color(0xff811a41),
                        ),
                        isThreeLine: true,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            // Beverages
            padding: const EdgeInsets.only(top: 10.0),
            child: ListView(
              children: <Widget>[
                Container(
                  height: 110,
                  width: 300,
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            width: 100,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://fsa.zobj.net/crop.php?r=sRGdPY1sHV--V8d4vRowxNN4H4bH4ffNpfyKtfUzL9c4t0GmJ6K7aeehxn_PS6CHAvw1OwzyONm3DYS__gLuucyTlhX_go7pcTQ-2VOVMAWeheObodqFojf0t_tc-Mh2aPgaZVHIs7joOgf2'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        title: Text(
                          "Vat 69",
                          style: TextStyle(fontSize: 17),
                        ),
                        subtitle: Wrap(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Row(
                                children: <Widget>[
                                  IconTheme(
                                    data: IconThemeData(
                                      color: Colors.amber,
                                      size: 22,
                                    ),
                                    child: StarDisplay(value: 4),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    '₹ 2000',
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        trailing: Switch(
                          value: isSwitched1,
                          onChanged: (value) {
                            setState(() {
                              isSwitched1 = value;
                            });
                          },
                          activeColor: Color(0xff811a41),
                        ),
                        isThreeLine: true,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 110,
                  width: 300,
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            width: 100,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://cdn2.bigcommerce.com/server5500/tpbc2s65/products/1330/images/10098/Dalmore-15__18245.1531507152.1280.1280.jpg?c=2'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        title: Text(
                          "Jack Daniels",
                          style: TextStyle(fontSize: 17),
                        ),
                        subtitle: Wrap(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Row(
                                children: <Widget>[
                                  IconTheme(
                                    data: IconThemeData(
                                      color: Colors.amber,
                                      size: 22,
                                    ),
                                    child: StarDisplay(value: 4),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    '₹ 2500',
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        trailing: Switch(
                          value: isSwitched2,
                          onChanged: (value) {
                            setState(() {
                              isSwitched2 = value;
                            });
                          },
                          activeColor: Color(0xff811a41),
                        ),
                        isThreeLine: true,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            // Beverages
            padding: const EdgeInsets.only(top: 10.0),
            child: ListView(
              children: <Widget>[
                Container(
                  height: 110,
                  width: 300,
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            width: 100,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1551024601-bec78aea704b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        title: Text(
                          "Donuts",
                          style: TextStyle(fontSize: 17),
                        ),
                        subtitle: Wrap(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Row(
                                children: <Widget>[
                                  IconTheme(
                                    data: IconThemeData(
                                      color: Colors.amber,
                                      size: 22,
                                    ),
                                    child: StarDisplay(value: 4),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    '₹ 2000',
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        trailing: Switch(
                          value: isSwitched2,
                          onChanged: (value) {
                            setState(() {
                              isSwitched2 = value;
                            });
                          },
                          activeColor: Color(0xff811a41),
                        ),
                        isThreeLine: true,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 110,
                  width: 300,
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            width: 100,
                            height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://realfood.tesco.com/media/images/RFO-1400x919-classic-chocolate-mousse-69ef9c9c-5bfb-4750-80e1-31aafbd80821-0-1400x919.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        title: Text(
                          "Chocolate Mousse",
                          style: TextStyle(fontSize: 17),
                        ),
                        subtitle: Wrap(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Row(
                                children: <Widget>[
                                  IconTheme(
                                    data: IconThemeData(
                                      color: Colors.amber,
                                      size: 22,
                                    ),
                                    child: StarDisplay(value: 4),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    '₹ 2500',
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        trailing: Switch(
                          value: isSwitched1,
                          onChanged: (value) {
                            setState(() {
                              isSwitched1 = value;
                            });
                          },
                          activeColor: Color(0xff811a41),
                        ),
                        isThreeLine: true,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class StarDisplay extends StatelessWidget {
  final int value;
  const StarDisplay({Key key, this.value = 0})
      : assert(value != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        return Icon(
          index < value ? Icons.star : Icons.star_border,
        );
      }),
    );
  }
}
