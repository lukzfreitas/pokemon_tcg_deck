import 'dart:convert';

class PokemonImage {
  final String small;
  final String large;
  
  PokemonImage({
    required this.small,
    required this.large,
  });  

  Map<String, dynamic> toMap() {
    return {
      'small': small,
      'large': large,
    };
  }

  factory PokemonImage.fromMap(Map<String, dynamic> map) {
    return PokemonImage(
      small: map['small'] ?? '',
      large: map['large'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PokemonImage.fromJson(String source) => PokemonImage.fromMap(json.decode(source));
}
