import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  String currentLang = 'ar';
  ThemeMode currentTheme = ThemeMode.light;

  void changeLanguage(String newLang) async {
    final prefs = await SharedPreferences.getInstance();

    if (currentLang == newLang) {
      return;
    }
    currentLang = newLang;
    await prefs.setString('lang', currentLang);
    notifyListeners();
  }

  String getMainBackGround() {
    return isDark()
        ? 'assets/images/main_background_dark.png'
        : 'assets/images/main_background.png';
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }

  Future<void> changeTheme(ThemeMode newMode) async {
    final prefs = await SharedPreferences.getInstance();
    if (newMode == currentTheme) {
      return;
    }
    currentTheme = newMode;
    await prefs.setBool("Theme", isDark());
    notifyListeners();
  }
}
