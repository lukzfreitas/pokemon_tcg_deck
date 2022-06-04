import 'dart:convert';

class CardMarket {
  final String url;
  final String updatedAt;
  final Prices prices;
  CardMarket({
    required this.url,
    required this.updatedAt,
    required this.prices,
  });

  Map<String, dynamic> toMap() {
    return {
      'url': url,
      'updatedAt': updatedAt,
      'prices': prices.toMap(),
    };
  }

  factory CardMarket.fromMap(Map<String, dynamic> map) {
    return CardMarket(
      url: map['url'] ?? '',
      updatedAt: map['updatedAt'] ?? '',
      prices: Prices.fromMap(map['prices']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CardMarket.fromJson(String source) => CardMarket.fromMap(json.decode(source));
}

class Prices {
  final double averageSellPrice;
  final double? lowPrice;
  final double? trendPrice;
  final double? reverseHoloTrend;
  final double? lowPriceExPlus;
  final double? avg1;
  final double? avg7;
  final double? avg30;
  final double? reverseHoloAvg1;
  final double? reverseHoloAvg7;
  final double? reverseHoloAvg30;
  Prices({
    required this.averageSellPrice,
    this.lowPrice,
    this.trendPrice,
    this.reverseHoloTrend,
    this.lowPriceExPlus,
    this.avg1,
    this.avg7,
    this.avg30,
    this.reverseHoloAvg1,
    this.reverseHoloAvg7,
    this.reverseHoloAvg30,
  });

  Map<String, dynamic> toMap() {
    return {
      'averageSellPrice': averageSellPrice,
      'lowPrice': lowPrice,
      'trendPrice': trendPrice,
      'reverseHoloTrend': reverseHoloTrend,
      'lowPriceExPlus': lowPriceExPlus,
      'avg1': avg1,
      'avg7': avg7,
      'avg30': avg30,
      'reverseHoloAvg1': reverseHoloAvg1,
      'reverseHoloAvg7': reverseHoloAvg7,
      'reverseHoloAvg30': reverseHoloAvg30,
    };
  }

  factory Prices.fromMap(Map<String, dynamic> map) {
    return Prices(
      averageSellPrice: map['averageSellPrice']?.toDouble() ?? 0.0,
      lowPrice: map['lowPrice']?.toDouble() ?? 0.0,
      trendPrice: map['trendPrice']?.toDouble() ?? 0.0,
      reverseHoloTrend: map['reverseHoloTrend']?.toDouble() ?? 0.0,
      lowPriceExPlus: map['lowPriceExPlus']?.toDouble() ?? 0.0,
      avg1: map['avg1']?.toDouble() ?? 0.0,
      avg7: map['avg7']?.toDouble() ?? 0.0,
      avg30: map['avg30']?.toDouble() ?? 0.0,
      reverseHoloAvg1: map['reverseHoloAvg1']?.toDouble() ?? 0.0,
      reverseHoloAvg7: map['reverseHoloAvg7']?.toDouble() ?? 0.0,
      reverseHoloAvg30: map['reverseHoloAvg30']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Prices.fromJson(String source) => Prices.fromMap(json.decode(source));
}
