import 'package:flutter/material.dart';
import 'package:tienda/util/desktop_layout.dart';
import 'package:tienda/util/movil_layout.dart';
import 'package:tienda/util/responsive_layout.dart';
import 'package:tienda/util/tablet_layout.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        movilLayout: MyMovilLayout(),
        tabletLayout: MyTabletLayout(),
        desktopLayout: MyDesktopLayout());
  }
}
