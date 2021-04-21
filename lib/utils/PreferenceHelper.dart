import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesKeys {
  static const String MOBILE_NUMBER = 'mobile_number';
  static const String EMAIL_ID = 'email_id';
  static const String PREVIOUS_APP_VERSION = 'app_version';
  static const String IS_USER_LOGGED_OUT = "IS_USER_LOGGED_OUT";
  static const String AUTH_TOKEN = "health_jwt_token";
}


Future<SharedPreferences> _getSharedPreferenceInstance() async {
  return await SharedPreferences.getInstance();
}

setStringPrefs(String key, String value) async {
  var instance = await _getSharedPreferenceInstance();
  instance.setString(key, value);
}

Future<String> getStringPrefs(String key) async {
  var instance = await _getSharedPreferenceInstance();
  return instance.getString(key);
}

setBoolPrefs(String key, bool value) async {
  var instance = await _getSharedPreferenceInstance();
  instance.setBool(key, value);
}

Future<bool> getBoolPrefs(String key) async {
  var instance = await _getSharedPreferenceInstance();
  return instance.getBool(key);
}

clearPreferences() async {
  var instance = await _getSharedPreferenceInstance();
  await instance.clear();
}
