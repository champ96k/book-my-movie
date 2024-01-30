import 'package:book_my_movie/core/services/shared_preferences/my_shared_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MySharedPreferencesImp extends MySharedPreferences {
  @override
  Future<void> setBooleanValue({
    required String key,
    required bool value,
  }) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    myPrefs.setBool(key, value);
  }

  @override
  Future<bool> getBooleanValue(String key) async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    return myPrefs.getBool(key) ?? false;
  }
}
