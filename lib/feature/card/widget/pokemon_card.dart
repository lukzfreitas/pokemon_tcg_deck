import 'package:flutter/material.dart';
import 'package:pokemon_tcg_deck/feature/card/model/pokemon.dart';
import 'package:pokemon_tcg_deck/shared/widget/box_decoration.dart';

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
        childrenPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        title: const Text('Pokémon Card'), 
        children: [
          image(context)
        ],
      )
    );
  }
  

  Widget body(BuildContext context) {
    return SingleChildScrollView(      
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        width: MediaQuery.of(context).size.width,
        decoration: boxDecoration(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              header(context),
              image(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget header(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,        
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: pokemon.name,
                      style: const TextStyle(fontSize: 20),
                    ),
                    TextSpan(
                      text: '  Level ${pokemon.level}',
                      style: const TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'HP ${pokemon.hp}',
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: pokemon.subtypes.join(', '),
                      style: const TextStyle(fontSize: 14),
                    ),
                    TextSpan(
                      text: '  evolves from ${pokemon.evolvesFrom}',
                      style: const TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget image(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Image.network(pokemon.imageCardUrl),
    );
  }  
}
