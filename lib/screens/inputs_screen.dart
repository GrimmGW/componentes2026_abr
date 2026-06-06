import 'package:componentes2026_abr/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputsScreen extends StatefulWidget {
   
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  // autofocus: true,
                  keyboardType: TextInputType.text,
                  onChanged: (value){
                    print(value);
                  },
                  // obscureText: true,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: AppThemes.primary)
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topRight: Radius.circular(10)
                      ),
                      borderSide: BorderSide()
                    ),
                    helperText: 'Escribe tu correo',
                    suffixIcon: IconButton(
                      onPressed: (){}, 
                      icon: Icon(Icons.remove_red_eye),
                    ),
                    hintText: 'Email',
                    labelText: 'Escribe tu email'
                  ),
                ),
              ],
            )
          ),
        ),
      )
    );
  }
}