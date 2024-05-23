import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  double opacityLevel = 1.0;
  void CambiarOpacidad(){
      setState(() {
        final random = Random();
            _width = random.nextInt(300).toDouble();
            _height = random.nextInt(300).toDouble();
            _color = Color.fromRGBO(random.nextInt(256), 
            random.nextInt(256), random.nextInt(256), 1);
            _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());

        opacityLevel = opacityLevel == 0 ? 1.0 : 0.0;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animaciones"),
      ),
      body: Center(

        child: AnimatedOpacity(
          opacity: opacityLevel,
          duration: const Duration(seconds: 2),

          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.bounceOut,
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadius,
            ),
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          CambiarOpacidad();
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}