import 'package:componentes2026_abr/routes/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: const Text('Home - Componentes'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(AppRoutes.menuOptions[index].name),
            leading: Icon(AppRoutes.menuOptions[index].icon),
            onTap: () => Navigator.pushNamed(context, AppRoutes.menuOptions[index].route),
          );
        },
      ),
    );
  }
}