import 'dart:convert';

import 'package:pokemon_tcg_deck/models/card/pokemon.dart';

class ResponsePokemon {
  final List<Pokemon> data;
  final int page;
  final int pageSize;
  final int count;
  final int totalCount;

  ResponsePokemon({
    required this.data,
    required this.page,
    required this.pageSize,
    required this.count,
    required this.totalCount,
  });

  Map<String, dynamic> toMap() {
    return {
      'data': data.map((x) => x.toMap()).toList(),
      'page': page,
      'pageSize': pageSize,
      'count': count,
      'totalCount': totalCount,
    };
  }

  factory ResponsePokemon.fromMap(Map<String, dynamic> map) {
    return ResponsePokemon(
      data: List<Pokemon>.from(map['data']?.map((x) => Pokemon.fromMap(x))),
      page: map['page']?.toInt() ?? 0,
      pageSize: map['pageSize']?.toInt() ?? 0,
      count: map['count']?.toInt() ?? 0,
      totalCount: map['totalCount']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ResponsePokemon.fromJson(String source) =>
      ResponsePokemon.fromMap(json.decode(source));
}
