import 'package:flutter/material.dart';

class MenuOption {
  final String title;
  final IconData icon;
  final Widget screen;
  final String route;

  const MenuOption({
    required this.route,
    required this.title,
    required this.icon,
    required this.screen,
  });
}
