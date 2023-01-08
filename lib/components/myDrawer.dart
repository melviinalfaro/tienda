import 'package:flutter/material.dart';

final myDrawer = Drawer(
  child: ListView(
    children: const <Widget> [
      ListTile(
        leading: Icon(Icons.home),
        title: Text('Inicio'),
      ),
    ],
  ),
);
