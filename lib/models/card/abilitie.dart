import 'dart:convert';

class Abilitie {
  final String name;
  final String text;
  final String type;
  Abilitie({
    required this.name,
    required this.text,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'text': text,
      'type': type,
    };
  }

  factory Abilitie.fromMap(Map<String, dynamic> map) {
    return Abilitie(
      name: map['name'] ?? '',
      text: map['text'] ?? '',
      type: map['type'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Abilitie.fromJson(String source) => Abilitie.fromMap(json.decode(source));
}
