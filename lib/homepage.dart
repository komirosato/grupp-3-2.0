import 'package:flutter/material.dart';
import 'package:template/calculatorTab.dart';
import 'package:template/mydrinkstab.dart';
import 'package:template/searchTab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    calculatorTab(),
    SearchTab(),
    mydrinksTab()
    ,
  ];

   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static void hejhej() {
    print("object");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Icon(Icons.local_bar, color: Color.fromARGB(255, 255, 143, 0), size: 50,),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Calculator',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search drinks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_drink),
            label: 'My drinks',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
