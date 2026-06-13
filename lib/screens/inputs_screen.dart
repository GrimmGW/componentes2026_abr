import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsScreen extends StatefulWidget {
   
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {

  final _formKey = GlobalKey<FormState>();

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final Map<String, String> _formValues = {

    'first-name' : '',
    'last-name' : '',
    'email' : '',
    'password' : '',
    'role' : ''

  };

  void _syncFormValues() {
    _formValues['first-name'] = _firstNameController.text.trim();
    _formValues['last-name'] = _lastNameController.text.trim();
    _formValues['email'] = _emailController.text.trim();
    _formValues['password'] = _passwordController.text.trim();
    _formValues['role'] = _rol ?? '';
  }

  String? _rol;

  bool get _isFormComplete {
    return _firstNameController.text.trim().isNotEmpty &&
     _lastNameController.text.trim().isNotEmpty &&
      _emailController.text.trim().isNotEmpty &&
       _passwordController.text.trim().isNotEmpty &&
     _rol != null;

  }

  void _submitForm(){
    FocusScope.of(context).unfocus();
    setState(() {
      if(!(_formKey.currentState?.validate() ?? false)){
        return;
      }
      _syncFormValues();
      print(_formValues);

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          // dismissDirection: DismissDirection.horizontal,
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12)),
          behavior: SnackBarBehavior.floating,
          content: Row(
            children: [
              Icon(Icons.check_circle_outline_outlined, color: Colors.white,),
              SizedBox(width: 10,),
              Expanded(child: Text('Datos enviados exitosamente.'))
            ],
          )
        )
      );

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text('Registro de usuarios', style: TextStyle(fontSize: 22)),
                const Text('Debes completar todos los campos para continuar'),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Expanded(
                      child: CustomInput(
                        textController: _firstNameController, icon: 
                        Icons.person_outline,
                        hintTextValue: 'Ej. Maria',
                        labelTextValue: 'Nombre',
                        obscureText: false,
                        textInputTypeValue: TextInputType.text,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: CustomInput(
                        textController: _lastNameController, 
                        icon: Icons.person_add_outlined,
                        hintTextValue: 'Ej. Lopez',
                        labelTextValue: 'Apellido',
                        obscureText: false,
                        textInputTypeValue: TextInputType.text,
                      ),
                    )
                  ],
                ),
                CustomInput(
                  icon: Icons.email_outlined, 
                  hintTextValue: 'johndoe@email.com', 
                  labelTextValue: 'Email', 
                  textController: _emailController,
                  obscureText: false,
                  textInputTypeValue: TextInputType.emailAddress,
                ),
                CustomInput(
                  icon: Icons.password_rounded, 
                  hintTextValue: 'abc123', 
                  labelTextValue: 'Contraseña', 
                  textController: _passwordController,
                  obscureText: true,
                  textInputTypeValue: TextInputType.text,
                ),
                SizedBox(height: 10,),
                DropdownButtonFormField(
                  initialValue: _rol,
                  autovalidateMode: AutovalidateMode.disabled,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                    labelText: 'Rol',
                    hintText: 'Selecciona un Rol'
                  ),
                  onChanged: (value){
                    setState(() {
                      _rol = value;

                    });
                  },
                  items: [
                    DropdownMenuItem(value: 'admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'superusuario', child: Text('Super Usuario')),
                    DropdownMenuItem(value: 'dev', child: Text('Desarrollador')),
                  ], 
                ),
                const SizedBox(height: 20),
                FilledButton.icon(
                  onPressed: _isFormComplete ? _submitForm : null,
                  label: const Text('Enviar datos'),
                  icon: const Icon(Icons.send_outlined),
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12))
                  ),
                )
              ],
            )
          ),
        ),
      )
    );
  }
}

