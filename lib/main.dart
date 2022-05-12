import 'package:flutter/material.dart';
import 'package:pokemon_tcg_deck/feature/card/model/abilitie.dart';
import 'package:pokemon_tcg_deck/feature/card/model/atack.dart';
import 'package:pokemon_tcg_deck/feature/card/model/pokemon.dart';
import 'package:pokemon_tcg_deck/feature/card/model/weakness.dart';
import 'package:pokemon_tcg_deck/feature/card/page/page_card.dart';
import 'package:pokemon_tcg_deck/feature/card/page/page_search_card.dart';
import 'package:pokemon_tcg_deck/feature/card/widget/pokemon_card.dart';
import 'package:pokemon_tcg_deck/feature/card/widget/abilities_card.dart';
import 'package:pokemon_tcg_deck/feature/card/widget/atack_card.dart';
import 'package:pokemon_tcg_deck/feature/card/widget/weaknesses_card.dart';
import 'package:pokemon_tcg_deck/feature/home/page/page_home.dart';
import 'package:pokemon_tcg_deck/feature/home/widgets/menu_item.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

void main() {
  // runApp(const StoryBookPokemon());
  // runApp(const MaterialApp(home: MainPokemon()));
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const PageHome(),
      '/search-card': (context) => const PageSearchCard()
    },
  ));
}

class MainPokemon extends StatelessWidget {
  const MainPokemon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Charizard'),
      ),
      body: PageCard(
          pokemon: Pokemon(
            name: 'Charizard',
            level: '50',
            hp: '150',
            evolvesFrom: "Blaine's Charmeleon",
            subtypes: ["Stage 2"],
            imageCardUrl: 'https://images.pokemontcg.io/dp3/3_hires.png',
          ),
          abilities: [
            Abilitie(
                name: 'Fury Blaze',
                description:
                    "Flip a coin. If heads, discard 2 Energy cards attached to Charizard. If tails, discard 4 Energy cards attached to Charizard. (If you can't, this attack does nothing.)",
                type: 'Poke-Body')
          ],
          atacks: [
            Atack(
                name: 'Blast Burn',
                damage: '20+',
                description:
                    "Flip a coin. If heads, discard 2 Energy cards attached to Charizard. If tails, discard 4 Energy cards attached to Charizard. (If you can't, this attack does nothing.)",
                costList: ['Fire', 'Fire', 'Fire', 'Colorless'],
                convertedEnergyCost: 1),
            Atack(
                name: 'Fire Wing',
                damage: '30',
                description: "Discard a Fire Energy attached to Charizard.",
                costList: ['Fire', 'Fire', 'Colorless'],
                convertedEnergyCost: 2),
          ],
          weaknesses: [
            Weakness(type: 'Fighting', value: '2x'),
            Weakness(type: 'Water', value: '2x')
          ]),
    );
  }
}

class StoryBookPokemon extends StatelessWidget {
  const StoryBookPokemon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Storybook(
      stories: [
        Story(
          name: 'Menu Item',
          builder: (context) => MenuItem(
            onClick: () => {},
            title: context.knobs.text(
              label: 'text',
              description: 'title menu item',
              initial: 'Search Pokémon Card',
            ),            
            height: context.knobs.slider(
              label: 'height',
              initial: 200,              
              max: 500,
              min: 50,
              description: 'Height from menu item'
            ),
          ),
        ),
        Story(
          name: 'Pokemon Card',
          description: 'Describe details about pokemon card',
          builder: (context) => PokemonCard(
            pokemon: context.knobs.options(
              label: 'pokemon',
              initial: Pokemon(
                name: 'Charizard',
                level: '50',
                hp: '150',
                evolvesFrom: "Blaine's Charmeleon",
                subtypes: ["Stage 2"],
                imageCardUrl: 'https://images.pokemontcg.io/dp3/3_hires.png',
              ),
            ),
          ),
        ),
        Story(
          name: 'Card Atack',
          builder: (context) => AtackCard(
            atacks: context.knobs.options(
              label: 'atack',
              initial: [
                Atack(
                    name: 'Blast Burn',
                    damage: '20+',
                    description:
                        "Flip a coin. If heads, discard 2 Energy cards attached to Charizard. If tails, discard 4 Energy cards attached to Charizard. (If you can't, this attack does nothing.)",
                    costList: ['Fire', 'Fire', 'Fire', 'Colorless'],
                    convertedEnergyCost: 1),
                Atack(
                    name: 'Fire Wing',
                    damage: '30',
                    description: "Discard a Fire Energy attached to Charizard.",
                    costList: ['Fire', 'Fire', 'Colorless'],
                    convertedEnergyCost: 2),
              ],
            ),
          ),
        ),
        Story(
          name: 'Card Abilities',
          builder: (context) => AbilitiesCard(
            abilities: context.knobs.options(
              label: 'abilities',
              initial: [
                Abilitie(
                    name: 'Fury Blaze',
                    description:
                        "Flip a coin. If heads, discard 2 Energy cards attached to Charizard. If tails, discard 4 Energy cards attached to Charizard. (If you can't, this attack does nothing.)",
                    type: 'Poke-Body')
              ],
            ),
          ),
        ),
        Story(
          name: 'Card weakness',
          builder: (context) => WeaknessesCard(
            weaknesses: context.knobs.options(
              label: 'weakness',
              initial: [
                Weakness(type: 'Fighting', value: '2x'),
                Weakness(type: 'Water', value: '2x')
              ],
            ),
          ),
        ),
      ],
    );
  }
}
