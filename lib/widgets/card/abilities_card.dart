import 'package:flutter/material.dart';
import 'package:pokemon_tcg_deck/models/card/abilitie.dart';
import 'package:pokemon_tcg_deck/widgets/shared/box_decoration.dart';

class AbilitiesCard extends StatelessWidget {
  final List<Abilitie> abilities;

  const AbilitiesCard({Key? key, required this.abilities}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      width: MediaQuery.of(context).size.width,
      decoration: boxDecoration(),
      child: ExpansionTile(
        title: const Text('Abilities'),
        childrenPadding:
            const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
        children: List.from(
          abilities.map(
            (Abilitie abilitie) => Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Text(abilitie.name),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Flexible(
                        child: Text(
                          abilitie.text,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Text(abilitie.type),
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
