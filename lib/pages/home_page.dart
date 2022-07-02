import 'package:flutter/material.dart';
import 'package:flutter_project/content/switch_theme.dart';
import 'package:flutter_project/pages/page_two/page_two.dart';
import 'package:flutter_project/pages/page_three/page_three.dart';
import 'package:flutter_project/pages/page_one/page_one.dart';
import 'package:flutter_project/provider/theme.dart';

//import 'package:flutter_project/pages/drawer_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int _selectedIndex = 0;
  static List<Widget> pages = <Widget>[
    const PageOne(),
    const PageTwo(),
    const PageThree(),
    
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Text(
          'GUIDE',
          style: MyThemes.darkTextTheme.headline2,
        ),
        actions: const [
          Icon(Icons.light_mode),
          ChangeBtn(),
          Icon(Icons.dark_mode),
        ],
      ),
      //drawer: DrawerPage(),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        //selectedItemColor: Theme.of(context).bottomAppBarTheme.color,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 35,
                color: Theme.of(context).iconTheme.color,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.fastfood_sharp,
              size: 35,
              color: Theme.of(context).iconTheme.color,
            ),
            label: 'Fast Foods',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.nightlife_sharp,
                size: 35,
                color: Theme.of(context).iconTheme.color,
              ),
              label: 'Night Life'),
        ],
      ),
    );
  }
}
