import 'dart:convert';

import 'package:pokemon_tcg_deck/models/card/abilitie.dart';
import 'package:pokemon_tcg_deck/models/card/attack.dart';
import 'package:pokemon_tcg_deck/models/card/card_market.dart';
import 'package:pokemon_tcg_deck/models/card/pokemon_image.dart';
import 'package:pokemon_tcg_deck/models/card/set_card.dart';
import 'package:pokemon_tcg_deck/models/card/tcg_player.dart';
import 'package:pokemon_tcg_deck/models/card/type_value.dart';

class Pokemon {
  final String id;
  final String name;
  final List<String> supertypes;
  final List<String> subtypes;
  final String level;
  final String hp;
  final List<String> types;
  final String evolvesFrom;
  final List<String> evolvesTo;
  final List<Abilitie> abilities;
  final List<String> rules;
  final List<Attack> attacks;
  final List<TypeValue> weakness;
  final List<TypeValue> resistances;
  final List<String> retreatCost;
  final int convertedRetreatCost;
  final SetCard set;
  final String number;
  final String artist;
  final String rarity;
  final List<int> nationalPokedexNumbers;
  final Legalities legalities;
  final PokemonImage images;
  final TCGPlayer? tcgplayer;
  final CardMarket? cardmarket;
  Pokemon({
    required this.id,
    required this.name,
    required this.supertypes,
    required this.subtypes,
    required this.level,
    required this.hp,
    required this.types,
    required this.evolvesFrom,
    required this.evolvesTo,
    required this.abilities,
    required this.rules,
    required this.attacks,
    required this.weakness,
    required this.resistances,
    required this.retreatCost,
    required this.convertedRetreatCost,
    required this.set,
    required this.number,
    required this.artist,
    required this.rarity,
    required this.nationalPokedexNumbers,
    required this.legalities,
    required this.images,
    this.tcgplayer,
    this.cardmarket,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'supertypes': supertypes,
      'subtypes': subtypes,
      'level': level,
      'hp': hp,
      'types': types,
      'evolvesFrom': evolvesFrom,
      'evolvesTo': evolvesTo,
      'abilities': abilities.map((x) => x.toMap()).toList(),
      'rules': rules,
      'attacks': attacks.map((x) => x.toMap()).toList(),
      'weakness': weakness.map((x) => x.toMap()).toList(),
      'resistances': resistances.map((x) => x.toMap()).toList(),
      'retreatCost': retreatCost,
      'convertedRetreatCost': convertedRetreatCost,
      'set': set.toMap(),
      'number': number,
      'artist': artist,
      'rarity': rarity,
      'nationalPokedexNumbers': nationalPokedexNumbers,
      'legalities': legalities.toMap(),
      'images': images.toMap(),
      'tcgplayer': tcgplayer?.toMap(),
      'cardmarket': cardmarket?.toMap(),
    };
  }

  factory Pokemon.fromMap(Map<String, dynamic> map) {
    return Pokemon(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      supertypes: List<String>.from(map['supertypes'] ?? []),
      subtypes: List<String>.from(map['subtypes'] ?? []),
      level: map['level'] ?? '',
      hp: map['hp'] ?? '',
      types: List<String>.from(map['types'] ?? []),
      evolvesFrom: map['evolvesFrom'] ?? '',
      evolvesTo: List<String>.from(map['evolvesTo'] ?? []),
      abilities: List<Abilitie>.from(
          map['abilities']?.map((x) => Abilitie.fromMap(x)) ?? []),
      rules: List<String>.from(map['rules'] ?? []),
      attacks: List<Attack>.from(
          map['attacks']?.map((x) => Attack.fromMap(x)) ?? []),
      weakness: List<TypeValue>.from(
          map['weakness']?.map((x) => TypeValue.fromMap(x)) ?? []),
      resistances: List<TypeValue>.from(
          map['resistances']?.map((x) => TypeValue.fromMap(x)) ?? []),
      retreatCost: List<String>.from(map['retreatCost'] ?? []),
      convertedRetreatCost: map['convertedRetreatCost'] ?? 0,
      set: SetCard.fromMap(map['set']),
      number: map['number'] ?? '',
      artist: map['artist'] ?? '',
      rarity: map['rarity'] ?? '',
      nationalPokedexNumbers: List<int>.from(map['nationalPokedexNumbers'] ?? []),
      legalities: Legalities.fromMap(map['legalities']),
      images: PokemonImage.fromMap(map['images']),
      tcgplayer: map['tcgplayer'] == null ? null : TCGPlayer.fromMap(map['tcgplayer']),
      cardmarket: map['cardmarket'] == null ? null : CardMarket.fromMap(map['cardmarket']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Pokemon.fromJson(String source) =>
      Pokemon.fromMap(json.decode(source));
}
