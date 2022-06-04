import 'dart:convert';

class Prices {
  final Price? firstEditionHolofoil;
  final Price? unlimitedHolofoil;

  Prices({
    this.firstEditionHolofoil,
    this.unlimitedHolofoil,
  });

  Map<String, dynamic> toMap() {
    return {
      'firstEditionHolofoil': firstEditionHolofoil?.toMap(),
      'unlimitedHolofoil': unlimitedHolofoil?.toMap(),
    };
  }

  factory Prices.fromMap(Map<String, dynamic> map) {
    return Prices(
      firstEditionHolofoil: map['1stEditionHolofoil'] == null ? null : Price.fromMap(map['1stEditionHolofoil']),
      unlimitedHolofoil: map['unlimitedHolofoil'] == null ? null : Price.fromMap(map['unlimitedHolofoil']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Prices.fromJson(String source) => Prices.fromMap(json.decode(source));
}

class Price {
  final double low;
  final double mid;
  final double high;
  final double market;
  final double directLow;

  Price({
    required this.low,
    required this.mid,
    required this.high,
    required this.market,
    required this.directLow,
  });

  Map<String, dynamic> toMap() {
    return {
      'low': low,
      'mid': mid,
      'high': high,
      'market': market,
      'directLow': directLow,
    };
  }

  factory Price.fromMap(Map<String, dynamic> map) {
    return Price(
      low: map['low']?.toDouble() ?? 0.0,
      mid: map['mid']?.toDouble() ?? 0.0,
      high: map['high']?.toDouble() ?? 0.0,
      market: map['market']?.toDouble() ?? 0.0,
      directLow: map['directLow']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Price.fromJson(String source) => Price.fromMap(json.decode(source));
}
