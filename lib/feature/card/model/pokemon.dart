import 'dart:convert';

import 'package:pokemon_tcg_deck/feature/card/model/pokemon_image.dart';

class Pokemon {
  final String id;
  final String name;
  final String level;
  final String hp;
  final String evolvesFrom;
  final List<dynamic> types;
  final PokemonImage images;
  
  Pokemon({
    required this.id,
    required this.name,
    required this.level,
    required this.hp,
    required this.evolvesFrom,
    required this.types,
    required this.images,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'level': level,
      'hp': hp,
      'evolvesFrom': evolvesFrom,
      'types': types,
      'images': images.toMap(),
    };
  }

  factory Pokemon.fromMap(Map<String, dynamic> map) {
    return Pokemon(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      level: map['level'] ?? '',
      hp: map['hp'] ?? '',
      evolvesFrom: map['evolvesFrom'] ?? '',
      types: List<dynamic>.from(map['types'] ?? []),
      images: PokemonImage.fromMap(map['images'] ?? []),
    );
  }

  String toJson() => json.encode(toMap());

  factory Pokemon.fromJson(String source) => Pokemon.fromMap(json.decode(source));
}
