import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {

  final IconData icon;
  final String hintTextValue;
  final String labelTextValue;
  final TextEditingController textController;
  final bool obscureText;
  final TextInputType textInputTypeValue;

  const CustomInput({
    super.key,
    required this.icon,
    required this.hintTextValue, 
    required this.labelTextValue, 
    required this.textController, 
    required this.obscureText, 
    required this.textInputTypeValue, 
  });

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {

  late bool _obscureText;
  
  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: widget.textController,
        keyboardType: widget.textInputTypeValue,
        obscureText: _obscureText,
        // onChanged: (str) =>,
        autovalidateMode: AutovalidateMode.disabled,
        validator: (str){
          if (str == null || str.trim().isEmpty){
            return 'Entrada requerida';
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: widget.hintTextValue,
          labelText: widget.labelTextValue,
          prefixIcon: Icon(widget.icon),
          suffixIcon: _obscureText ? IconButton(
              onPressed: () => setState(() => _obscureText = !_obscureText), 
              icon: Icon(_obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined)
            ) : null,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide()
          ),
        ),
      ),
    );
  }
}