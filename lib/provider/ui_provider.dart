import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier {
  int _selecMenuOption = 0;
  int get selecMenuOption {
    return this._selecMenuOption;
  }

  set selecMenuOption(int value) {
    this._selecMenuOption = value;
    notifyListeners();
  }
}
