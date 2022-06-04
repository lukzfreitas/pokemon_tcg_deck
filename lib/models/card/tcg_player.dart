import 'dart:convert';

import 'package:pokemon_tcg_deck/models/card/price.dart';

class TCGPlayer {
  final String url;
  final String updatedAt;
  final Prices? prices;
  
  TCGPlayer({
    required this.url,
    required this.updatedAt,
    this.prices,
  });

  Map<String, dynamic> toMap() {
    return {
      'url': url,
      'updatedAt': updatedAt,
      'prices': prices?.toMap(),
    };
  }

  factory TCGPlayer.fromMap(Map<String, dynamic> map) {
    return TCGPlayer(
      url: map['url'] ?? '',
      updatedAt: map['updatedAt'] ?? '',
      prices: map['prices'] == null ? null : Prices.fromMap(map['prices']),
    );
  }

  String toJson() => json.encode(toMap());

  factory TCGPlayer.fromJson(String source) =>
      TCGPlayer.fromMap(json.decode(source));
}
