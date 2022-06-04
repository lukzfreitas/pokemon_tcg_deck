import 'package:flutter/material.dart';

class Energy {
  static Icon factoryIconEnergy(String energy) {
    switch (energy) {
      case "Fire":
        return const Icon(
          Icons.local_fire_department_rounded,
          color: Colors.red,
        );
      case "Colorless":
        return const Icon(
          Icons.ac_unit_rounded,
          color: Colors.grey,
        );
      case "Water":
        return const Icon(
          Icons.water_drop_rounded,
          color: Colors.blue,
        );
      default:
        return const Icon(
          Icons.ac_unit_rounded,
          color: Colors.grey,
        );
    }
  }
}
