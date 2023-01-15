import 'package:flutter/material.dart';

final appbar = AppBar(
  title: const Text('República Celular'),
  centerTitle: true,
  elevation: 0,
  actions: <Widget>[
    IconButton(
      icon: const Icon(Icons.search),
      splashRadius: 20,
      onPressed: () {
        // Acción al presionar el botón de búsqueda
      },
    ),
    IconButton(
      icon: const Icon(Icons.more_vert),
      splashRadius: 20,
      onPressed: () {
        // Acción al presionar el botón de búsqueda
      },
    ),
  ],
);
