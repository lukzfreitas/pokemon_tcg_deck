import 'package:flutter/material.dart';
import 'package:pokemon_tcg_deck/controllers/card/bloc_provider_card.dart';
import 'package:pokemon_tcg_deck/models/card/abilitie.dart';
import 'package:pokemon_tcg_deck/models/card/attack.dart';
import 'package:pokemon_tcg_deck/models/card/type_value.dart';
import 'package:pokemon_tcg_deck/screens/home/page_home.dart';
import 'package:pokemon_tcg_deck/widgets/card/abilities_card.dart';
import 'package:pokemon_tcg_deck/widgets/card/attack_card.dart';
import 'package:pokemon_tcg_deck/widgets/card/pokemon_item.dart';
import 'package:pokemon_tcg_deck/widgets/card/weaknesses_card.dart';
import 'package:pokemon_tcg_deck/widgets/home/menu_item.dart';
import 'package:pokemon_tcg_deck/widgets/shared/search_bar.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

void main() {
  // runApp(const StoryBookPokemon());
  // runApp(const MaterialApp(home: MainPokemon()));
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const PageHome(),
      '/search-card': (context) => const BlocProviderCard(),
    },
  ));
}



class StoryBookPokemon extends StatelessWidget {
  const StoryBookPokemon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Storybook(
      stories: [
        Story(
          name: 'Search Bar',
          builder: (context) => SearchBar(
            hintText: context.knobs.text(
              label: 'hintText',
              initial: 'Search Pokémon Card',
            ),
            onSearch: () => {},
            onClear: () => {},
            // controller: TextEditingController(),
          ),
        ),
        Story(
          name: 'Pokemon item',
          builder: (context) => PokemonItem(
            title: context.knobs.text(label: 'title', initial: 'Charizard'),
            subtitle: context.knobs
                .text(label: 'subtitle', initial: "Blaine's Charmeleon"),
            leading: context.knobs.text(label: 'leading', initial: 'HP 150'),
            imageUrl: context.knobs.text(
              label: 'imageUrl',
              initial: 'https://images.pokemontcg.io/dp3/3_hires.png',
            ),
            onClick: () => {},
          ),
        ),
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
                description: 'Height from menu item'),
          ),
        ),        
        Story(
          name: 'Card Atack',
          builder: (context) => AtackCard(
            atacks: context.knobs.options(
              label: 'atack',
              initial: [
                Attack(
                  name: 'Blast Burn',
                  damage: '20+',
                  text:
                      "Flip a coin. If heads, discard 2 Energy cards attached to Charizard. If tails, discard 4 Energy cards attached to Charizard. (If you can't, this attack does nothing.)",
                  cost: ['Fire', 'Fire', 'Fire', 'Colorless'],
                  convertedEnergyCost: 1,
                ),
                Attack(
                  name: 'Fire Wing',
                  damage: '30',
                  text: "Discard a Fire Energy attached to Charizard.",
                  cost: ['Fire', 'Fire', 'Colorless'],
                  convertedEnergyCost: 2,
                ),
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
                    text:
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
                TypeValue(type: 'Fighting', value: '2x'),
                TypeValue(type: 'Water', value: '2x')
              ],
            ),
          ),
        ),
      ],
    );
  }
}
