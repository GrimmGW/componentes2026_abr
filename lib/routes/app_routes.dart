import 'package:componentes2026_abr/models/menu_options.dart';
import 'package:componentes2026_abr/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    '/dep' : (BuildContext context) => const DependenciesScreen(),
    '/inputs' : (BuildContext context) => const InputsScreen(),
    '/infinite' : (BuildContext context) => const InfiniteScrollScreen(),

  };

  static final menuOptions = <MenuOptions>[
    MenuOptions(route: '/listview', name: 'Pantalla de ListView', icon: FontAwesomeIcons.solidRectangleList, screen: const ListviewScreen()),
    MenuOptions(route: '/alert', name: 'Pantalla de Alertas', icon: FontAwesomeIcons.triangleExclamation, screen: const AlertScreen()),
    MenuOptions(route: '/avatar', name: 'Pantalla de Avatar', icon: FontAwesomeIcons.solidCircleUser, screen: const AvatarScreen()),
    MenuOptions(route: '/card', name: 'Pantalla de Cards', icon: FontAwesomeIcons.solidAddressCard, screen: const CardScreen()),
    MenuOptions(route: '/container', name: 'Pantalla de Container', icon: FontAwesomeIcons.box, screen: const ContainerScreen()),
    MenuOptions(route: '/dep', name: 'Pantalla de Dependencias', icon: FontAwesomeIcons.boxOpen, screen: const DependenciesScreen()),
    MenuOptions(route: '/inputs', name: 'Pantalla de Inputs/Entradas', icon: FontAwesomeIcons.solidKeyboard, screen: const DependenciesScreen()),
    MenuOptions(route: '/infinite', name: 'Pantalla de Scroll infinito', icon: FontAwesomeIcons.scroll, screen: const InfiniteScrollScreen()),
  ];

}