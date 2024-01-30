abstract class MySharedPreferences {
  Future<void> setBooleanValue({required String key, required bool value});
  Future<bool> getBooleanValue(String key);
}
