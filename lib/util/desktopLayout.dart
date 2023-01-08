import 'package:flutter/material.dart';
import 'package:tienda/components/myAppBarDesktop.dart';
import 'package:tienda/components/myDrawer.dart';

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
