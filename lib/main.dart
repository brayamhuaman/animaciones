import 'package:animaciones/pages/home_page.dart';
import 'package:flutter/material.dart';
void main() {
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Animaciones",
      home: Home(),
    );
  }
}