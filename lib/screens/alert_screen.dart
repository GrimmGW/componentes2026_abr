import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {

  void displayDialog(BuildContext context){
    showDialog(
      context: context, 
      builder: (context){
        return AlertDialog(
          title: Text('Soy una alerta'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Sunt aliqua magna voluptate proident exercitation dolore ut veniam.')
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: Text('Aceptar')
            )
          ],
        );
      }
    );
  }
   
  const AlertScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('Alertas'),
      ),
      body: Center(
        child: FilledButton(
          onPressed: (){
            displayDialog(context);
          }, 
          child: Text('Ver Alerta')
        ),
      )
    );
  }
}