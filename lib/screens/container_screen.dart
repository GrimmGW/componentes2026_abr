import 'package:flutter/material.dart';
import 'dart:math';

class ContainerScreen extends StatefulWidget {
   
  const ContainerScreen({super.key});

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {

  double _height = 100;
  double _width = 100;
  Color? _color = Colors.amber;

  void cambiarForma(){
    final random = Random();

    _height = random.nextInt(300).toDouble() + 70;
    _width = random.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(
      random.nextInt(255), 
      random.nextInt(255), 
      random.nextInt(255), 
      1
    );

    setState(() {
      
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
         child: AnimatedContainer(
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 400),
          height: _height,
          width: _width,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: const BorderRadius.all(Radius.circular(20))
          ),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          cambiarForma();
        },
        backgroundColor: Colors.pink[200],
        child: const Icon(Icons.play_arrow_rounded, color: Colors.black,),
      ),
    );
  }
}