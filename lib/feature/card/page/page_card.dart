
import 'package:flutter/material.dart';
import 'package:pokemon_tcg_deck/feature/card/model/abilitie.dart';
import 'package:pokemon_tcg_deck/feature/card/model/atack.dart';
import 'package:pokemon_tcg_deck/feature/card/model/pokemon.dart';
import 'package:pokemon_tcg_deck/feature/card/model/weakness.dart';
import 'package:pokemon_tcg_deck/feature/card/widget/abilities_card.dart';
import 'package:pokemon_tcg_deck/feature/card/widget/atack_card.dart';
import 'package:pokemon_tcg_deck/feature/card/widget/pokemon_card.dart';
import 'package:pokemon_tcg_deck/feature/card/widget/weaknesses_card.dart';

class PageCard extends StatelessWidget {
  final Pokemon pokemon;
  final List<Abilitie> abilities;
  final List<Atack> atacks;
  final List<Weakness> weaknesses;

  const PageCard({
    Key? key,
    required this.pokemon,
    required this.abilities,
    required this.atacks,
    required this.weaknesses,
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
            AbilitiesCard(abilities: abilities),
            AtackCard(atacks: atacks),
            WeaknessesCard(weaknesses: weaknesses),
          ],
        ),
      ),
    );
  }
}
