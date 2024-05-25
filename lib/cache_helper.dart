import 'package:responsi_prak_mobile/models/amiibo.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../models/amiibo.dart';

class CacheHelper {
  static const String _cacheKey = 'cachedGame';

  get games => null;

  Future<void> cacheGames(List<Game> dogs) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(_cacheKey, json.encode(games.map((game) => game.toJson()).toList()));
  }

  Future<List<Game>> getCachedDogs() async {
    final prefs = await SharedPreferences.getInstance();
    final String? gamesJson = prefs.getString(_cacheKey);
    if (gamesJson != null) {
      final List<dynamic> dogsList = json.decode(gamesJson);
      return gamesList.map((json) => Game.fromJson(json)).toList();
    }
    return [];
  }
}
