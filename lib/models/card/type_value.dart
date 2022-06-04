import 'dart:convert';

class TypeValue {
  final String type;
  final String value;  
  
  TypeValue({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return {
      'type': type,
      'value': value,
    };
  }

  factory TypeValue.fromMap(Map<String, dynamic> map) {
    return TypeValue(
      type: map['type'] ?? '',
      value: map['value'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory TypeValue.fromJson(String source) => TypeValue.fromMap(json.decode(source));
}
