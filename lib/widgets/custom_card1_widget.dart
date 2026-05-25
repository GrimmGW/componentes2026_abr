import 'package:flutter/material.dart';

class CustomCard1 extends StatelessWidget {

  final String title;
  final Color color;

  const CustomCard1({
    required this.title,
    required this.color,
    super.key, 
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Column(
        children: [
          ListTile(
            title: Text(title),
            subtitle: const Text('Soy un subtitulo de la card'),
            leading: const Icon(Icons.star_rounded),
          )
        ],
      ),
    );
  }
}