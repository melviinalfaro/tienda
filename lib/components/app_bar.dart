import 'package:flutter/material.dart';

final appbar = AppBar(
  title: const Text('Admin República Celular'),
  elevation: 0,
  actions: <Widget>[
    IconButton(
      icon: const Icon(Icons.search),
      splashRadius: 20,
      onPressed: () {
        // Acción al presionar el botón de búsqueda
      },
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        icon: const Icon(Icons.more_vert),
        splashRadius: 20,
        onPressed: () {
          // Acción al presionar el botón de búsqueda
        },
      ),
    ),
  ],
);
