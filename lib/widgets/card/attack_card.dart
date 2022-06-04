import 'package:flutter/material.dart';
import 'package:pokemon_tcg_deck/models/card/attack.dart';
import 'package:pokemon_tcg_deck/models/card/energy.dart';
import 'package:pokemon_tcg_deck/widgets/shared/box_decoration.dart';

class AtackCard extends StatelessWidget {
  final List<Attack> atacks;

  const AtackCard({
    Key? key,
    required this.atacks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      width: MediaQuery.of(context).size.width,
      decoration: boxDecoration(),
      child: ExpansionTile(
        title: const Text('Atacks'),
        childrenPadding:
            const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
        children: List.from(
          atacks.map(
            (Attack attack) => Column(
              children: [
                const Divider(height: 2),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Text(attack.name),
                      for (String cost in attack.cost)
                        Energy.factoryIconEnergy(cost),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Text('Damage ${attack.damage}'),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Flexible(
                        child: Text(
                          attack.text,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
