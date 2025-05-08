import 'dart:ui';

import 'package:flutter/foundation.dart';

import 'colors.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.yellow,
    secondaryColor: Colors.lightYellow,
    backgroundColor: Colors.white,
    textColor: Colors.black,
    buttonTextColor: Colors.darkYellow,
    textFieldBackground: Colors.grey,
    textFieldPlaceholder: Colors.darkGrey,
    textFieldText: Colors.black,
  );

  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.yellow,
    secondaryColor: Colors.lightYellow,
    backgroundColor: Colors.darkBlue,
    textColor: Colors.white,
    buttonTextColor: Colors.white,
    textFieldBackground: Colors.yellow,
    textFieldPlaceholder: Colors.darkGrey,
    textFieldText: Colors.white,
  );
}

class ThemeData {
  final Brightness brightness;
  final Color primaryColor;
  final Color secondaryColor;
  final Color backgroundColor;
  final Color textColor;
  final Color buttonTextColor;
  final Color textFieldBackground;
  final Color textFieldPlaceholder;
  final Color textFieldText;

  ThemeData({
    required this.brightness,
    required this.primaryColor,
    required this.secondaryColor,
    required this.backgroundColor,
    required this.textColor,
    required this.buttonTextColor,
    required this.textFieldBackground,
    required this.textFieldPlaceholder,
    required this.textFieldText,
  });
}

class ThemeProvider with ChangeNotifier {
  ThemeData _currentTheme = AppTheme.dark;

  ThemeData get currentTheme => _currentTheme;

  bool get isDarkMode => _currentTheme.brightness == Brightness.dark;

  void toggleTheme() {
    _currentTheme = isDarkMode ? AppTheme.light : AppTheme.dark;
    notifyListeners();
  }
}
