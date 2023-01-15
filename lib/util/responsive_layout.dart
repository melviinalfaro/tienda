import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget movilLayout;
  final Widget tabletLayout;
  final Widget desktopLayout;

  const ResponsiveLayout(
      {super.key,
      required this.movilLayout,
      required this.tabletLayout,
      required this.desktopLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrainst) {
      if (constrainst.maxWidth < 576) {
        return movilLayout;
      } else if (constrainst.maxWidth <= 768) {
        return tabletLayout;
      } else {
        return desktopLayout;
      }
    });
  }
}
