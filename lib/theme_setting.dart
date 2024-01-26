import 'package:flutter/material.dart';
import 'package:project_fitcru/data/repositories/preferences/preferences.dart';
import 'package:project_fitcru/data/services/storage/storage.dart';

ThemeSetting themeSettings = ThemeSetting();

class ThemeSetting extends ChangeNotifier {
  factory ThemeSetting() {
    return _themeSetting;
  }
  ThemeSetting._internal();

  static final ThemeSetting _themeSetting = ThemeSetting._internal();

  final preferences = PreferencesRepository(initializedStorageService!);

  ThemeMode get getTheme {
    return preferences.getTheme(initTheme: setDefaultTheme);
  }

  void setDefaultTheme() {
    setTheme(ThemeMode.dark);
  }

  void setTheme(ThemeMode theme) {
    preferences.setTheme(theme);
    notifyListeners();
  }
}
