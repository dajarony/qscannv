import 'package:flutter/material.dart';
import 'package:qscannv/model/menu_option.dart';
import 'package:qscannv/screen/barril_screen.dart';

class AppRout {
  static const initialRoute = '/home';
  static final menuOption = <MenuOption>[
    MenuOption(
        title: 'Home', icon: Icons.home, route: '/home', screen: HomeScreen()),
    MenuOption(
        title: 'mapa',
        icon: Icons.adb_sharp,
        route: '/mapa',
        screen: MapaScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRout() {
    Map<String, Widget Function(BuildContext)> routes = {};
    menuOption.forEach((menuOption) {
      routes[menuOption.route] = (context) => menuOption.screen;
    });
    return routes;

    // static Map<String, Widget Function(BuildContext)> routes = {
    //   '/home': (BuildContext context) => const HomeScreen(),
    //   '/card': (BuildContext context) => const CardScreen(),
    // };
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    print('Ruta no Encontrada');
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
