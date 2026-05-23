import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {

  final musica = const ['Reggaeton', 'Rock', 'Pop', 'Alternativa', 'Electronica'];
   
  const ListviewScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(        
        children: [
          ...musica.map(
            (generos) => ListTile(
              onTap: (){
                print('Has pulsado este listtile');
              },
              title: Text(generos),
              subtitle: Text('Cupidatat laborum do id Lorem consectetur magna.'),
              leading: Icon(Icons.music_note_rounded),
              trailing: IconButton(
                onPressed: (){}, 
                icon: Icon(Icons.arrow_right)
              )
            )
          )
        ],
      )
    );
  }
}