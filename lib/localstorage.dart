import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static late SharedPreferences _preferences;

  static Future<void> getInstance() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static String getCount() {
    var data = _preferences.getString("counterApp");
    return data ?? "0";
  }

  static void setCount(String count) {
    _preferences.setString("counterApp", count);
  }
}
