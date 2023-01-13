import 'package:flutter/material.dart';
import 'package:tienda/home_screen.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const Celulares());
}

class Celulares extends StatelessWidget {
  const Celulares({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
    ));
    return MaterialApp(
      title: 'República Celular',
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 0, 116, 199)
        )
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(color: Color(0XFF252525))
      ),
      themeMode: ThemeMode.system,
    );
  }
}
