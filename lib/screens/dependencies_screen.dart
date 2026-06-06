import 'package:componentes2026_abr/themes/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class DependenciesScreen extends StatelessWidget {
   
  const DependenciesScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dependencias'),
      ),
      body: Center(
         child: Text('DependenciesScreen'),
      ),
      bottomNavigationBar: GNav(
        backgroundColor: AppThemes.primary,
        activeColor: Colors.white,
        tabBackgroundColor: Colors.indigo[400]!,
        rippleColor: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
        onTabChange: (value){},
        gap: 5,
        tabs: [
          GButton(
            icon: Icons.home_filled,
            text: 'Menu principal',
          ),
          GButton(
            icon: Icons.search,
            text: 'Buscar',
          ),
          GButton(
            icon: Icons.person,
            text: 'Mi perfil',
          ),
        ]
      ),
    );
  }
}