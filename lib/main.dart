// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './pages/home_page.dart';
import './pages/dark_page.dart';
import './pages/light_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
      routes: {
        "/homepage": (context) => Homepage(),
        "/darkpage": (context) => DarkPage(),
        "/lightpage": (context) => LightPage(),
      },
    );
  }
}
