import 'package:componentes2026_abr/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarjetas'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          CustomCard1(title: 'Este es el titulo', color: Colors.blue[50]!,),
          CustomCard1(title: 'Nueva card', color: Colors.red[50]!,),
          CustomCard1(title: 'Card nueva', color: Colors.green[50]!,),
          CustomCard2(),
        ],
      )
    );
  }
}

class CustomCard2 extends StatelessWidget {
  const CustomCard2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      child: Column(
        children: [
          const FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://images.pexels.com/photos/1048283/pexels-photo-1048283.jpeg'),
            height: 270,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            alignment: Alignment.centerLeft,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Soy un paisaje bonito', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                Text('Cillum adipisicing deserunt ex nostrud laborum esse.'),
              ],
            ),
          )
        ],
      ),
    );
  }
}