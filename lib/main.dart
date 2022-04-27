import 'package:flutter/material.dart';
import 'package:pokemon_tcg_deck/feature/card.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Storybook(
      stories: [
        Story(
          name: 'Pokemon Card',
          description: 'Describe details about pokemon card',
          builder: (context) => PokemonCard(
            name: context.knobs.text(label: 'name', initial: 'Charizard'),
            height: context.knobs.slider(
                label: 'height',
                description: 'height of card',
                initial: 403,
                min: 100,
                max: 500),
            width: context.knobs.slider(
                label: 'width',
                description: 'width of card',
                initial: 347,
                min: 100,
                max: 500),
            imageUrl: "https://images.pokemontcg.io/dp3/3_hires.png",
          ),
        ),
      ],
    );
  }
}
