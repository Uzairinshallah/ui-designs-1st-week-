import 'package:flutter/material.dart';

class bottom_nav extends StatelessWidget {
  const bottom_nav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: My_navigator(),
    );
  }
}

class My_navigator extends StatefulWidget {
  const My_navigator({Key? key}) : super(key: key);

  @override
  _My_navigatorState createState() => _My_navigatorState();
}

class _My_navigatorState extends State<My_navigator> {


  int _selectIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Add Person', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index){
    setState((){
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('BottomNavigationBar'),
          backgroundColor: Colors.green
      ),
      drawer: Drawer(
        child: ListView(
          children:  [
            Container(
              color: Colors.deepPurpleAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius:40,
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2016/08/20/05/38/avatar-1606916__340.png'),
                  ),
                  DrawerHeader(
                    decoration: const BoxDecoration(
                      color: Colors.deepPurpleAccent,
                    ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Name    : Uzair Inshallah',style: TextStyle(color: Colors.white),),
                            Text('Email   : Uzairi@gmail.com',style: TextStyle(color: Colors.white),),
                            Text('Address : Chinar Bagh',style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      )

                  ),

                ],
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {

                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 3'),
              onTap: () {

                Navigator.pop(context);
              },
            ),
          ],

        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                tooltip: "Home",
                backgroundColor: Colors.green
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('Search'),
                tooltip: 'Search Bar',
                backgroundColor: Colors.greenAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              backgroundColor: Colors.lightGreen,
              tooltip: 'User Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              title: Text('Add'),
              backgroundColor: Colors.lightGreenAccent,
              tooltip: 'Add a User',
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectIndex,
          selectedItemColor: Colors.black,

          onTap: _onItemTapped,
          elevation: 5
      ),
    );
  }
}

