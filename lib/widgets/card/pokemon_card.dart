import 'package:flutter/material.dart';
import 'package:pokemon_tcg_deck/models/card/pokemon.dart';
import 'package:pokemon_tcg_deck/widgets/shared/box_decoration.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonCard({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        width: MediaQuery.of(context).size.width,
        decoration: boxDecoration(),
        child: ExpansionTile(
          initiallyExpanded: true,
          childrenPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          title: const Text('Pokémon Card'),
          children: [image(context)],
        ));
  }

  Widget image(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Image.network(pokemon.images.large),
    );
  }
}
