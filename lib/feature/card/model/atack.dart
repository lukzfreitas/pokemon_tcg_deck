class Atack {
  Atack({
    required this.name,
    required this.damage,
    required this.description,
    required this.costList,
    required this.convertedEnergyCost
  });

  String name;
  String damage;
  String description;
  List<String> costList;
  int convertedEnergyCost;
}
