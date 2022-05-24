import 'package:flutter/material.dart';

class AppTheme {
  static Color primary = Colors.greenAccent;

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Color.fromARGB(255, 1, 35, 63),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
    ),
  );
}
