import 'dart:convert';


class Attack {
  final String name;
  final List<String> cost;
  final int convertedEnergyCost;
  final String damage;
  final String text;
  Attack({
    required this.name,
    required this.cost,
    required this.convertedEnergyCost,
    required this.damage,
    required this.text,
  });
  

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'cost': cost,
      'convertedEnergyCost': convertedEnergyCost,
      'damage': damage,
      'text': text,
    };
  }

  factory Attack.fromMap(Map<String, dynamic> map) {
    return Attack(
      name: map['name'] ?? '',
      cost: List<String>.from(map['cost']),
      convertedEnergyCost: map['convertedEnergyCost'] ?? 0,
      damage: map['damage'] ?? '',
      text: map['text'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Attack.fromJson(String source) => Attack.fromMap(json.decode(source));
}
