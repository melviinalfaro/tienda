import 'package:flutter/material.dart';
import 'package:tienda/home_screen.dart';
import 'package:flutter/services.dart';

void main() {
  _configureSystemChrome();
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
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.light,
    );
  }
}

void _configureSystemChrome() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
  ));
}
