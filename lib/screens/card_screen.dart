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
          CustomCard2(
            url: 'https://sm.ign.com/t/ign_es/video/m/marvels-wo/marvels-wolverine-official-release-date-reveal_bdjn.1200.png',
            title: ''
          ),
          CustomCard2(
            url: 'https://sm.pcmag.com/pcmag_au/review/k/kirbys-ret/kirbys-return-to-dreamland-deluxe_upku.jpg',
            title: 'Kirby: Return to Dreamland',
          ),
        ],
      )
    );
  }
}

