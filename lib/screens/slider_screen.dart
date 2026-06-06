import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 50;
  bool _isActive = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 0,
            max: 100,
            value: _sliderValue, 
            onChanged: _isActive == true ? (value){
              setState(() {
                // print(value);
                _sliderValue = value;
              });
            } : null
          ),
          SwitchListTile.adaptive(
            title: const Text('Terminos y condiciones', style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: const Text('Al tocar esta casilla, estaras aceptando los terminos y condiciones de la app.'),
            value: _isActive, 
            onChanged: (value){
              setState(() {
                
              _isActive = value!;
              });
            }
          )
        ],
      )
    );
  }
}