import 'package:flutter/material.dart';
import 'package:tienda/components/appbar.dart';
import 'package:tienda/components/floating_action_add.dart';

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
      appBar: appbar,
      floatingActionButton: agregar,
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: Theme.of(context).brightness == Brightness.dark
                ? const Color(0xFF252525)
                : const Color(0xFFe6f1ee),
            indicatorColor: Theme.of(context).brightness == Brightness.dark
                ? const Color(0xFF9FCAFF)
                : const Color(0xFFcce8e2),
            labelType: NavigationRailLabelType.all,
            useIndicator: true,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.home_outlined, size: 26),
                selectedIcon: Icon(Icons.home_rounded,
                    color: Color(0xFF3f4947), size: 26),
                label: Text(
                  'Inicio',
                  style: TextStyle(color: Color(0xFF3f4947)),
                ),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.smartphone_outlined, size: 26),
                selectedIcon: Icon(Icons.smartphone_rounded,
                    color: Color(0xFF3f4947), size: 26),
                label: Text(
                  'Catálogo',
                  style: TextStyle(color: Color(0xFF3f4947)),
                ),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.shopping_bag_outlined, size: 26),
                selectedIcon: Icon(Icons.shopping_bag_rounded,
                    color: Color(0xFF3f4947), size: 26),
                label: Text(
                  'Pedidos',
                  style: TextStyle(color: Color(0xFF3f4947)),
                ),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.local_shipping_outlined, size: 26),
                selectedIcon: Icon(Icons.local_shipping_rounded,
                    color: Color(0xFF3f4947), size: 26),
                label: Text(
                  'Envíos',
                  style: TextStyle(color: Color(0xFF3f4947)),
                ),
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
