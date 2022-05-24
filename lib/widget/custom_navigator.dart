// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qscannv/provider/ui_provider.dart';

class NavigatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currenindex = uiProvider.selecMenuOption;
    return BottomNavigationBar(
      onTap: (int value) {
        uiProvider.selecMenuOption = value;
      },
      currentIndex: currenindex,
      // ignore: prefer_const_literals_to_create_immutables
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'map',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration),
          label: 'direccionesurl',
        ),
      ],
    );
  }
}
