import 'package:flutter/material.dart';
import 'package:tienda/util/desktopLayout.dart';
import 'package:tienda/util/movilLayout.dart';
import 'package:tienda/util/responsiveLayout.dart';
import 'package:tienda/util/tabletLayout.dart';

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
