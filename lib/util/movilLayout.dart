import 'package:flutter/material.dart';
import 'package:tienda/components/myAppBar.dart';
import 'package:tienda/components/myDrawer.dart';

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
      body: const Center(
        child: Text('Se enlistan todos los productos'),
      ),
      bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Colors.indigo.shade100,
            height: 80,
            labelTextStyle: MaterialStateProperty.all(
              const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
          child: NavigationBar(
            animationDuration: const Duration(milliseconds: 1000),
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.storefront_outlined, size: 24),
                selectedIcon: Icon(Icons.storefront_rounded,
                    color: Colors.indigo, size: 24),
                label: 'Inicio',
                tooltip: '',
              ),
              NavigationDestination(
                icon: Icon(Icons.smartphone_outlined, size: 24),
                selectedIcon: Icon(Icons.smartphone_rounded,
                    color: Colors.indigo, size: 24),
                label: 'Productos',
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
                icon: Icon(Icons.account_circle_outlined, size: 24),
                selectedIcon: Icon(Icons.account_circle_rounded,
                    color: Colors.indigo, size: 24),
                label: 'Perfil',
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
