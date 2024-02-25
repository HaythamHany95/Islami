import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
  // MaterialApp Local
  String appLanguage = 'en';
  // MaterialApp ThemeMode
  ThemeMode appMode = ThemeMode.light;

  void changeLanguage(String newLanguage) {
    if (appLanguage == newLanguage) {
      return;
    }
    appLanguage = newLanguage;
    notifyListeners();
  }

  void changeMode(ThemeMode newMode) {
    if (appMode == newMode) {
      return;
    }
    appMode = newMode;
    notifyListeners();
  }

  bool isDarkMode(ThemeMode mode) {
    bool isDark;
    if (mode == ThemeMode.light) {
      isDark = false;
    } else {
      isDark = true;
    }
    return isDark;
  }
}
