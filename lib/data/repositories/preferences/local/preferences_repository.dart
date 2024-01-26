import 'package:flutter/material.dart';
import 'package:project_fitcru/data/services/storage/storage.dart';

class PreferencesRepository {
  const PreferencesRepository(this.storage);

  final StorageService storage;

  String get _themeKey => 'preferences_theme_key';

  ThemeMode getTheme({void Function()? initTheme}) {
    final bool themeExists = storage.has(_themeKey);

    if (themeExists == false && initTheme != null) {
      initTheme();
    }

    final String? theme = storage.get(_themeKey) as String?;
    final ThemeMode themeMode = ThemeMode.values
        .firstWhere((e) => e.name == theme, orElse: () => ThemeMode.system);

    return themeMode;
  }

  Future<void> setTheme(ThemeMode themeMode) async {
    await storage.set(_themeKey, themeMode.name);
  }
}
