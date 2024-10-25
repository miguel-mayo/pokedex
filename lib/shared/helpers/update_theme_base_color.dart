import 'package:flutter/material.dart';
import 'package:pokedex/shared/shared.dart';

class UpdateBaseColorHelper {
  static void updateBaseColor(BuildContext context, Color color) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final newSettings = ThemeSettings(
      sourceColor: color,
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
    );
    ThemeSettingChange(settings: newSettings).dispatch(context);
  }
}
