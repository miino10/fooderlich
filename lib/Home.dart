import 'package:flutter/material.dart';
import 'package:fooderlich/Card2.dart';
import 'package:fooderlich/Card3.dart';
import 'package:fooderlich/card1.dart';

// 1
class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
// 7
  int _selectedIndex = 0;
  // 8
  static List<Widget> pages = <Widget>[
    const Card1(),
    const Card2(),
    const Card3(),
  ];
  // 9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Fooderlich',
                // 2
                style: Theme.of(context).textTheme.titleLarge)),
        body: pages[_selectedIndex],
        // 4
        bottomNavigationBar: BottomNavigationBar(
            // 5
            selectedItemColor:
                Theme.of(context).textSelectionTheme.selectionColor,
            // 10
            currentIndex: _selectedIndex,
            // 11
            onTap: _onItemTapped,
            // ignore: prefer_const_literals_to_create_immutables
            items: <BottomNavigationBarItem>[
              const BottomNavigationBarItem(
                  icon: Icon(Icons.card_giftcard), label: 'Card'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.card_giftcard), label: 'Card2'),
              const BottomNavigationBarItem(
                  icon: Icon(Icons.card_giftcard), label: 'Card3'),
            ]));
  }
}
