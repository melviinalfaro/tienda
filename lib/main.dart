import 'package:flutter/material.dart';
import 'package:tienda/homeScreen.dart';

void main() {
  runApp(const Celulares());
}

class Celulares extends StatelessWidget {
  const Celulares({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'República Celular',
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.light
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.light,
    );
  }
}