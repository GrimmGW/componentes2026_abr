import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hector Luna'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              //imagenes locales
              backgroundImage: AssetImage('assets/Imagen1.png'),
            ),
          )
        ],
      ),
      body: const Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.purple,
              radius: 70,
              //imagenes de internet
              backgroundImage: NetworkImage('https://m.media-amazon.com/images/M/MV5BMTM1NjExNjg1OV5BMl5BanBnXkFtZTcwMTQ0NzIwMw@@._V1_FMjpg_UX1000_.jpg'),
              // child: Text('HL', style: TextStyle(color: Colors.white, fontSize: 28),),
            ),
            SizedBox(height: 10,),
            Text('Hector Luna', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
            Text('hector@gmail.com'),
            Text('+58 412-1234567')
          ],
         )
      ),
    );
  }
}