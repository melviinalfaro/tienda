import 'package:flutter/material.dart';
import 'package:tienda/components/appbar.dart';
import 'package:tienda/components/floating_action_add.dart';

class MyMovilLayout extends StatefulWidget {
  const MyMovilLayout({super.key});

  @override
  State<MyMovilLayout> createState() => _MovilState();
}

class _MovilState extends State<MyMovilLayout> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      floatingActionButton: agregar,
      bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            backgroundColor: Theme.of(context).brightness == Brightness.dark ? const Color(0xFF252525) : const Color(0xFFe6f1ee),
            indicatorColor: Theme.of(context).brightness == Brightness.dark ? const Color(0xFF9FCAFF) : const Color(0xFFcce8e2),
            height: 80,
            labelTextStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ),
          child: NavigationBar(
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_outlined, size: 26),
                selectedIcon:
                    Icon(Icons.home_rounded, color: Color(0xFF3f4947), size: 26),
                label: 'Inicio',
                tooltip: '',
              ),
              NavigationDestination(
                icon: Icon(Icons.smartphone_outlined, size: 26),
                selectedIcon: Icon(Icons.smartphone_rounded,
                    color: Color(0xFF3f4947), size: 26),
                label: 'Catálogo',
                tooltip: '',
              ),
              NavigationDestination(
                icon: Icon(Icons.shopping_bag_outlined, size: 26),
                selectedIcon: Icon(Icons.shopping_bag_rounded,
                    color: Color(0xFF3f4947), size: 26),
                label: 'Pedidos',
                tooltip: '',
              ),
              NavigationDestination(
                icon: Icon(Icons.local_shipping_outlined, size: 26),
                selectedIcon: Icon(Icons.local_shipping_rounded,
                    color: Color(0xFF3f4947), size: 26),
                label: 'Envíos',
                tooltip: '',
              ),
            ],
            selectedIndex: currentPageIndex,
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
          )),
    );
  }
}
