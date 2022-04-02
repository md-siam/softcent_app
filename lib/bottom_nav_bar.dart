import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/explore_page.dart';
import 'pages/add_page.dart';
import 'pages/inbox_page.dart';
import 'pages/shopping_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const ExplorePage(),
    const AddPage(),
    const InboxPage(),
    const ShoppingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectIndex,
        onTap: _navigateBottomBar,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.compass),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.plus),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.mail),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.shoppingBag),
            label: 'Shop',
          ),
        ],
      ),
    );
  }
}
