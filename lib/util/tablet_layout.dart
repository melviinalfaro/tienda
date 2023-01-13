import 'package:flutter/material.dart';

class MyTabletLayout extends StatefulWidget {
  const MyTabletLayout({super.key});
  @override
  State<MyTabletLayout> createState() => _TabletState();
}

class _TabletState extends State<MyTabletLayout> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarTablet,
      body: Row(
        children: [
          NavigationRail(
            indicatorColor: Colors.blue,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.search),
                label: Text('Search'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings),
                label: Text('Settings'),
              ),
            ],
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
          Expanded(
            child: IndexedStack(
              index: _selectedIndex,
              children: [
                /*
                HomePage(),
                SearchPage(),
                SettingsPage(), */
              ],
            ),
          ),
        ],
      ),
    );
  }
}
