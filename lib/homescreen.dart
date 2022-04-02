import 'package:flutter/material.dart';
//import './bookmark.dart';
import './profile.dart';
import './newspage.dart';
class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {


  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    NewsPage(),
    Text('Coming SOON!!!!'),
    profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState(){
    super.initState();

    print("22");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).backgroundColor,

          iconTheme: IconThemeData(color: Colors.purpleAccent),

        title: Text('Newsssss',
        style: TextStyle(
          color: Theme.of(context).primaryColor
        ),
        )
      ),

      body:  Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        unselectedItemColor: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
        selectedItemColor:Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
        type:BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: const [
          // BottomNavigationBarItem(
          //   backgroundColor: Colors.purple,
          //   title: Text('Favourite'),
          //   icon: Icon(Icons.star),
          // ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            title: Text('home'),
            icon: Icon(Icons.home),

          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            title: Text('bookmark'),
            icon: Icon(Icons.bookmark),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            title: Text('profile'),
            icon: Icon(Icons.account_circle_sharp),
          )
        ],

      ),
    );
  }
}
