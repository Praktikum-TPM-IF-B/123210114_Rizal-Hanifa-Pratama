import 'dart:convert';

class Game {
  final String gameID;
  final String character;
  final String gameSeries;
  final String head;
  final String name;

  Game({
    required this.gameID,
    required this.character,
    required this.gameSeries,
    required this.head,
    required this.name,

  });

  factory Game.fromJson(Map<String, dynamic> json) {
    final attributes = json['attributes'];
    return Game(
      gameID: json['gameID'],
      name: attributes['name'] ?? 'Unknown',
      gameSeries: attributes['gameSeries'] ?? 'No Game Series available',
      head: attributes['name'] ?? 'Unknown',

    );
  }

  Map<String, dynamic> toJson() {
    return {
      'gameID': gameID,
      'name': name,
      'gameSeries': gameSeries,
      'head': head,

    };
  }
}
