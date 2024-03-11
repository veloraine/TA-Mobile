import 'package:shared_preferences/shared_preferences.dart';

import 'logger_service.dart';

class SharedPreferenceService {
  static SharedPreferences? _pref;

  static Future<void> init() async {
    LoggerService.i('Initializing Shared Preference Service');
    _pref = await SharedPreferences.getInstance();
  }

  static Future<void> saveString(String key, String value) async {
    await _pref!.setString(key, value);
  }

  static String? getString(String key) {
    return _pref!.getString(key);
  }

  static Future<void> removeKey(String key) async {
    await _pref!.remove(key);
  }

  static Map<String, String> getHeaders() {
    final token = getString('auth_token');
    return <String, String>{
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    };
  }
}
