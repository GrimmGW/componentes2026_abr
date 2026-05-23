import 'package:componentes2026_abr/models/menu_options.dart';
import 'package:componentes2026_abr/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static const initialRoute = '/home';

  static Map<String, Widget Function(BuildContext)> routes = {

    '/home' : (BuildContext context) => const HomeScreen(),
    '/listview' : (BuildContext context) => const ListviewScreen(),
    '/alert' : (BuildContext context) => const AlertScreen(),

  };

  static final menuOptions = <MenuOptions>[
    MenuOptions(route: '/listview', name: 'Pantalla de ListView', icon: Icons.list_outlined, screen: const ListviewScreen()),
    MenuOptions(route: '/alert', name: 'Pantalla de Alertas', icon: Icons.warning_rounded, screen: const AlertScreen()),
  ];

}