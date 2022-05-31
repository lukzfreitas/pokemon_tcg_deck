
import 'package:flutter/material.dart';
import 'package:pokemon_tcg_deck/feature/card/model/abilitie.dart';
import 'package:pokemon_tcg_deck/feature/card/model/attack.dart';
import 'package:pokemon_tcg_deck/feature/card/model/pokemon.dart';

import 'package:pokemon_tcg_deck/feature/card/widget/abilities_card.dart';
import 'package:pokemon_tcg_deck/feature/card/widget/attack_card.dart';
import 'package:pokemon_tcg_deck/feature/card/widget/pokemon_card.dart';
import 'package:pokemon_tcg_deck/feature/card/widget/weaknesses_card.dart';

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
