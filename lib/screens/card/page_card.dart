
import 'package:flutter/material.dart';
import 'package:pokemon_tcg_deck/models/card/pokemon.dart';
import 'package:pokemon_tcg_deck/widgets/card/abilities_card.dart';
import 'package:pokemon_tcg_deck/widgets/card/attack_card.dart';
import 'package:pokemon_tcg_deck/widgets/card/pokemon_card.dart';
import 'package:pokemon_tcg_deck/widgets/card/weaknesses_card.dart';

class PageCard extends StatelessWidget {
  final Pokemon pokemon;

  const PageCard({
    Key? key,
    required this.pokemon,    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      child: SingleChildScrollView(        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PokemonCard(
              pokemon: pokemon,
            ),
            AbilitiesCard(abilities: pokemon.abilities),
            AtackCard(atacks: pokemon.attacks),
            WeaknessesCard(weaknesses: pokemon.weakness),
          ],
        ),
      ),
    );
  }
}
