import 'package:flutter/material.dart';
import 'package:pokemon_tcg_deck/feature/home/widgets/menu_item.dart';

class PageHome extends StatelessWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(            
            horizontal: 5,
            vertical: 10,
          ),
          child: Column(
            children: [
              MenuItem(
                onClick: () => Navigator.pushNamed(context, '/search-card'),
                title: 'Find Pokémon Card',
                height: 100,
              ),
              MenuItem(
                // ignore: avoid_print
                onClick: () => {},
                title: 'Register Pokémon Card',
                height: 100,
              ),
              MenuItem(
                onClick: () => {},
                title: 'Register PokeDek',
                height: 100,
              ),
              MenuItem(
                onClick: () => {},
                title: 'Find Pokémon Card',
                height: 100,
              ),
              MenuItem(
                onClick: () => {},
                title: 'Register Pokémon Card',
                height: 100,
              ),
              MenuItem(
                onClick: () => {},
                title: 'Register PokeDek',
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
