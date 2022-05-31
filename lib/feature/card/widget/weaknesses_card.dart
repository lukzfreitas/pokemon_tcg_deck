import 'package:flutter/material.dart';
import 'package:pokemon_tcg_deck/feature/card/model/type_value.dart';
import 'package:pokemon_tcg_deck/shared/widget/box_decoration.dart';

class WeaknessesCard extends StatelessWidget {
  final List<TypeValue> weaknesses;

  const WeaknessesCard({Key? key, required this.weaknesses}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      width: MediaQuery.of(context).size.width,
      decoration: boxDecoration(),
      child: ExpansionTile(
        maintainState: true,
        title: const Text('Weaknesses'),
        childrenPadding:
            const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
        children: List.from(
          weaknesses.map(
            (TypeValue weakness) => Column(
              children: [
                const Divider(height: 2),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Text(weakness.type),
                    ],
                  ),
                ),                
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Text(weakness.value),
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