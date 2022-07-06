import 'package:flutter/material.dart';
import 'package:radio_nepal/view/screen/pages/downloadpage.dart';
import 'package:radio_nepal/view/screen/pages/favouritepage.dart';
import 'package:radio_nepal/view/screen/pages/homepage.dart';
import 'package:radio_nepal/view/screen/pages/morepage.dart';
import 'package:radio_nepal/view/screen/pages/newspage.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    FavouritePage(),
    DownonloadPage(),
    NewsPage(),
    MorePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              leading: Icon(Icons.person),
              title: Text(
                "Home",
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
              elevation: 10,
              backgroundColor: Colors.blue,
              actions: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.notifications),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.language),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.search),
                ),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: 'Favourite',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.download),
                  label: 'Library',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'News',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.more), label: 'More'),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.amber[800],
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: _onItemTapped,
            ),
            body: _widgetOptions.elementAt(_selectedIndex)));
  }
}
