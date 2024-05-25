import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../models/amiibo.dart';

class FavoritesHelper {
  static const String _cacheKey = 'favoriteGame';

  Future<void> cacheFavoriteGames(List<Game> games) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(_cacheKey, json.encode(games.map((game) => game.toJson()).toList()));
  }

  Future<List<Game>> getFavoriteGames() async {
    final prefs = await SharedPreferences.getInstance();
    final String? dogsJson = prefs.getString(_cacheKey);
    if (gamesJson != null) {
      final List<dynamic> dogsList = json.decode(gamesJson);
      return gameList.map((json) => Game.fromJson(json)).toList();
    }
    return [];
  }
}
