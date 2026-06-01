import 'package:componentes2026_abr/models/menu_options.dart';
import 'package:componentes2026_abr/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {

  static const initialRoute = '/home';

  static Map<String, Widget Function(BuildContext)> routes = {

    '/home' : (BuildContext context) => const HomeScreen(),
    '/listview' : (BuildContext context) => const ListviewScreen(),
    '/alert' : (BuildContext context) => const AlertScreen(),
    '/avatar' : (BuildContext context) => const AvatarScreen(),
    '/card' : (BuildContext context) => const CardScreen(),
    '/container' : (BuildContext context) => const ContainerScreen(),
    '/slider' : (BuildContext context) => const SliderScreen(),

  };

  static final menuOptions = <MenuOptions>[
    MenuOptions(route: '/listview', name: 'Pantalla de ListView', icon: Icons.list_outlined, screen: const ListviewScreen()),
    MenuOptions(route: '/alert', name: 'Pantalla de Alertas', icon: Icons.warning_rounded, screen: const AlertScreen()),
    MenuOptions(route: '/avatar', name: 'Pantalla de Avatar', icon: Icons.person_2_rounded, screen: const AvatarScreen()),
    MenuOptions(route: '/card', name: 'Pantalla de Cards', icon: Icons.card_membership_rounded, screen: const CardScreen()),
    MenuOptions(route: '/container', name: 'Pantalla de Container', icon: Icons.check_box_outline_blank_rounded, screen: const ContainerScreen()),
    MenuOptions(route: '/slider', name: 'Pantalla de Sliders', icon: Icons.slideshow_rounded, screen: const SliderScreen()),
  ];

}