import 'package:shared_preferences/shared_preferences.dart';

class FavoritesManager {
  static const _key = 'favorite_stops';

  // Save favorite stop codes
  static Future<void> saveFavorites(List<String> favoriteStopCodes) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_key, favoriteStopCodes);
  }

  // Load favorite stop codes
  static Future<List<String>> loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_key) ?? [];
  }
}
