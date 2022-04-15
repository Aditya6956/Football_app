import 'package:flutter/material.dart';

class DarkMode with ChangeNotifier {
  bool dark = true;
  void toggleDarkMode() {
    dark = !dark;
    notifyListeners();
  }
}
