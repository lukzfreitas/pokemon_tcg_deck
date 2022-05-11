class Pokemon {
  Pokemon({
    required this.name,
    required this.level,
    required this.hp,
    required this.evolvesFrom,
    required this.subtypes,
    required this.imageCardUrl
  });

  final String name;
  final String level;
  final String hp;
  final String evolvesFrom;
  final List<String> subtypes;  
  final String imageCardUrl;  
}
