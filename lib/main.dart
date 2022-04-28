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
            level: context.knobs.text(label: 'level', initial: '50'),
            hp: context.knobs.text(label: 'hp', initial: '150'),
            height: context.knobs.slider(
              label: 'height',
              description: 'height of card',
              initial: 600,
              min: 100,
              max: 500,
            ),
            width: context.knobs.slider(
              label: 'width',
              description: 'width of card',
              initial: 347,
              min: 100,
              max: 500,
            ),
            imageCardUrl: context.knobs.text(
              label: 'imageCardUrl',
              initial: 'https://images.pokemontcg.io/gym2/2_hires.png',
            ),
            imageLogoUrl: context.knobs.text(
              label: 'imageLogoUrl',
              initial:
                  'https://www.seekpng.com/png/detail/353-3532499_badgeleopard-the-energy-types-of-the-pokemon-tcg.png',
            ),
          ),
        ),
      ],
    );
  }
}
