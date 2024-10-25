import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class PreferencesRepository {
  // set
  Future<bool> set(
    String key,
    List<Map<String, dynamic>> value,
  ) async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.setString(key, jsonEncode(value));
  }

  // get
  Future<List<Map<String, dynamic>>?> get(String key) async {
    final preferences = await SharedPreferences.getInstance();
    final value = preferences.getString(key);
    if (value != null) {
      return List<Map<String, dynamic>>.from(jsonDecode(value));
    }
    return null;
  }
}
