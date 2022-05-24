import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qscannv/provider/ui_provider.dart';
import 'package:qscannv/screen/barril_screen.dart';
import 'package:qscannv/widget/barril_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ,
      body: _HomePageBody(),
      bottomNavigationBar: NavigatorWidget(),
      floatingActionButton: ScanBWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currenindex = uiProvider.selecMenuOption;
    switch (currenindex) {
      case 0:
        return HistorialScreen();
      case 1:
        return DireccioNes();

      default:
        return HistorialScreen();
    }
  }
}
