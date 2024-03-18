import 'package:shared_preferences/shared_preferences.dart';

class PreferenceUtils {
  static late SharedPreferences sharedPreferences;

  static Future<void> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static void setBoolValue(String key, bool value) async {
    await sharedPreferences.setBool(key, value);
  }

  static bool getBoolValue(String key, [bool? defValue]) {
    return sharedPreferences.getBool(key) ?? defValue ?? true;
  }
}
