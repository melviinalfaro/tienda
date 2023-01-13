import 'package:flutter/material.dart';
import 'package:tienda/components/app_bar.dart';

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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Agregar'),
        icon: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            backgroundColor: Theme.of(context).brightness == Brightness.dark ? const Color(0xFF252525) : Colors.white,
            indicatorColor: Colors.indigo.shade100,
            height: 80,
            labelTextStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ),
          child: NavigationBar(
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_outlined, size: 24),
                selectedIcon:
                    Icon(Icons.home_rounded, color: Colors.indigo, size: 24),
                label: 'Inicio',
                tooltip: '',
              ),
              NavigationDestination(
                icon: Icon(Icons.smartphone_outlined, size: 24),
                selectedIcon: Icon(Icons.smartphone_rounded,
                    color: Colors.indigo, size: 24),
                label: 'Catálogo',
                tooltip: '',
              ),
              NavigationDestination(
                icon: Icon(Icons.shopping_bag_outlined, size: 24),
                selectedIcon: Icon(Icons.shopping_bag_rounded,
                    color: Colors.indigo, size: 24),
                label: 'Pedidos',
                tooltip: '',
              ),
              NavigationDestination(
                icon: Icon(Icons.local_shipping_outlined, size: 24),
                selectedIcon: Icon(Icons.local_shipping_rounded,
                    color: Colors.indigo, size: 24),
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
