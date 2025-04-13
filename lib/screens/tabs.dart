import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// screens
import 'package:yumbook_flutter/screens/home.dart';
import 'package:yumbook_flutter/screens/discover.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _screens = [HomeScreen(), DiscoverScreen()];

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onNavItemTapped,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(fontSize: 12),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.house, size: 20),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.compass, size: 20),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.heart, size: 20),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user, size: 20),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
