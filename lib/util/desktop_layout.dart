import 'package:flutter/material.dart';
import 'package:tienda/components/appbar_desktop.dart';
import 'package:tienda/components/drawer.dart';

class MyDesktopLayout extends StatelessWidget {
  const MyDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbardesktop,
      drawer: myDrawer,
    );
  }
}
