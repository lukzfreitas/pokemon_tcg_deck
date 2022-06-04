import 'dart:convert';

import 'package:pokemon_tcg_deck/models/card/pokemon_image.dart';

class SetCard {
  final String id;
  final String name;
  final String series;
  final int printedTotal;
  final int total;
  final Legalities? legalities;
  final String ptcgoCode;
  final String releaseDate;
  final String updatedAt;
  final PokemonImage images;
  SetCard({
    required this.id,
    required this.name,
    required this.series,
    required this.printedTotal,
    required this.total,
    required this.legalities,
    required this.ptcgoCode,
    required this.releaseDate,
    required this.updatedAt,
    required this.images,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'series': series,
      'printedTotal': printedTotal,
      'total': total,
      'legalities': legalities?.toMap(),
      'ptcgoCode': ptcgoCode,
      'releaseDate': releaseDate,
      'updatedAt': updatedAt,
      'images': images.toMap(),
    };
  }

  factory SetCard.fromMap(Map<String, dynamic> map) {
    return SetCard(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      series: map['series'] ?? '',
      printedTotal: map['printedTotal']?.toInt() ?? 0,
      total: map['total']?.toInt() ?? 0,
      legalities: Legalities.fromMap(map['legalities']),
      ptcgoCode: map['ptcgoCode'] ?? '',
      releaseDate: map['releaseDate'] ?? '',
      updatedAt: map['updatedAt'] ?? '',
      images: PokemonImage.fromMap(map['images']),
    );
  }

  String toJson() => json.encode(toMap());

  factory SetCard.fromJson(String source) =>
      SetCard.fromMap(json.decode(source));
}

class Legalities {
  final String unlimeted;
  final String expanded;
  Legalities({    
    required this.unlimeted,
    required this.expanded
  });

  Map<String, dynamic> toMap() {
    return {
      'unlimeted': unlimeted,
      'expanded': expanded,
    };
  }

  factory Legalities.fromMap(Map<String, dynamic> map) {
    return Legalities(
      unlimeted: map['unlimeted'] ?? '',
      expanded: map['expanded'] ?? ''
    );
  }

  String toJson() => json.encode(toMap());

  factory Legalities.fromJson(String source) =>
      Legalities.fromMap(json.decode(source));
}
