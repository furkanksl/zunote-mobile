import 'package:shared_preferences/shared_preferences.dart';

class AppLocalService {
  saveThemeIndex(int index) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('themeIndex', index);
  }

  Future<int> getThemeIndex() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('themeIndex') ?? 0;
  }
}
