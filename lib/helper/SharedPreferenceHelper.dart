import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  static const String _userDataKey = 'user_data';

  Future<void> saveUserData(List userData) async {
    final prefs = await SharedPreferences.getInstance();
    final userDataJson = jsonEncode(userData);
    await prefs.setString(_userDataKey, userDataJson);
  }

  Future<List?> getUserData() async {
    final prefs = await SharedPreferences.getInstance();
    final userDataJson = prefs.getString(_userDataKey);
    if (userDataJson != null) {
      final userData = jsonDecode(userDataJson) as List<dynamic>;
      final userDataList =
          userData.map((item) => item as Map<dynamic, dynamic>).toList();
      return userDataList;
    }
    return null;
  }

  Future<void> removeUserData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_userDataKey);
  }
}
