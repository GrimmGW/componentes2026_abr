import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {

  void displayDialog(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context){
        return AlertDialog(
          title: const Text('Soy una alerta'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Sunt aliqua magna voluptate proident exercitation dolore ut veniam.')
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('Aceptar')
            )
          ],
        );
      }
    );
  }
   
  const AlertScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text('Alertas'),
      ),
      body: Center(
        child: FilledButton(
          onPressed: (){
            displayDialog(context);
          }, 
          child: const Text('Ver Alerta')
        ),
      )
    );
  }
}