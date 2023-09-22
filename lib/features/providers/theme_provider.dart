import 'package:flutter/material.dart';
import '../../common/enums/theme_enum.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeEnum currentTheme = ThemeEnum.light;

  bool get nowLightTheme => currentTheme == ThemeEnum.light ? true : false;

  void setTheme() {
    currentTheme =
        currentTheme == ThemeEnum.light ? ThemeEnum.dark : ThemeEnum.light;
    notifyListeners();
  }
}
