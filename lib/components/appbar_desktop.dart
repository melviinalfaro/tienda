import 'package:flutter/material.dart';

final appbardesktop = AppBar(
  title: const Text('Administrador de República Celular'),
  centerTitle: true,
  leading: Builder(
    builder: (BuildContext context) {
      return IconButton(
        splashRadius: 20,
        icon: const Icon(Icons.menu_rounded),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        tooltip: 'Menu de navegación',
      );
    },
  ),
  actions: [
    Padding(
      padding: const EdgeInsets.all(5.0),
      child: IconButton(
        icon: const Icon(Icons.search_rounded),
        splashRadius: 20,
        onPressed: () {
          // Realizar la búsqueda aquí
        },
        tooltip: 'Buscar',
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(5.0),
      child: IconButton(
        icon: const Icon(Icons.notifications_rounded),
        splashRadius: 20,
        onPressed: () {
          // Realizar la búsqueda aquí
        },
        tooltip: 'Notificaciones',
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        icon: const Icon(Icons.account_circle_rounded),
        splashRadius: 20,
        onPressed: () {
          // Realizar la búsqueda aquí
        },
        tooltip: 'Mi cuenta',
      ),
    ),
  ],
);
