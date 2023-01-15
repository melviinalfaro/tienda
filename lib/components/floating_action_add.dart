import 'package:flutter/material.dart';

var agregar = FloatingActionButton.extended(
  onPressed: () {},
  backgroundColor: const Color(0xFF92f4e5),
  label: const Text(
    'Agregar',
    style: TextStyle(color: Color(0xFF3f4947)),
  ),
  icon: const Icon(
    Icons.add,
    color: Color(0xFF3f4947),
  ),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(25.0),
  ),
);
