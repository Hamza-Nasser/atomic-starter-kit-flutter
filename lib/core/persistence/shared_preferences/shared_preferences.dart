
import 'package:shared_preferences/shared_preferences.dart';

import 'shared_preferences_keys.dart';

class Preferences {
  static SharedPreferences? _prefsInstance;

  static Future<SharedPreferences> get _instance async =>
      _prefsInstance ??= await SharedPreferences.getInstance();
      
  // call this method from iniState() function of mainApp().
  static Future<SharedPreferences?> init() async {
    _prefsInstance = await _instance;
    return _prefsInstance;
  }

  static String getString(PreferencesKey key, [String? defValue]) {
    return _prefsInstance?.getString(key.name) ?? defValue ?? "";
  }

  static Future<bool> setString(PreferencesKey key, String value) async {
    SharedPreferences? prefs = await _instance;
    return prefs.setString(key.name, value);
  }

  static bool getBool(PreferencesKey key, [bool? defValue]) {
    return _prefsInstance?.getBool(key.name) ?? defValue ?? false;
  }

  static Future<bool> setBool(PreferencesKey key, bool value) async {
    SharedPreferences? prefs = await _instance;
    return prefs.setBool(key.name, value);
  }

  static Future<bool> setInt(PreferencesKey key, int value) async {
    SharedPreferences? prefs = await _instance;
    return prefs.setInt(key.name, value);
  }

  static int getInt(PreferencesKey key, [int? defValue]) {
    return _prefsInstance?.getInt(key.name) ?? defValue ?? 0;
  }
}
