import 'package:flutter/material.dart';
import 'package:pokemon_tcg_deck/feature/card/model/pokemon.dart';
import 'package:pokemon_tcg_deck/feature/card/widget/pokemon_item.dart';
import 'package:pokemon_tcg_deck/http/response_pokemon.dart';

import 'package:pokemon_tcg_deck/http/webclients/card_webclient.dart';
import 'package:pokemon_tcg_deck/shared/widget/progress.dart';
import 'package:pokemon_tcg_deck/shared/widget/search_bar.dart';

class PageSearchCard extends StatelessWidget {
  PageSearchCard({Key? key}) : super(key: key);

  final CardWebClient _webClient = CardWebClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(
          controller: TextEditingController(),
          hintText: 'Search pokémon card',
          onSearch: () => {},
          onClear: () => {},
        ),
      ),
      body: FutureBuilder<ResponsePokemon>(
        future: _webClient.find('Charizard'),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              break;
            case ConnectionState.waiting:
              const Progress();
              break;
            case ConnectionState.active:
              break;
            case ConnectionState.done:
              if (snapshot.hasData) {
                final List<Pokemon>? pokemons = snapshot.data?.data;
                return ListView.builder(   
                  itemCount: snapshot.data?.totalCount,               
                  itemBuilder: (context, index) {
                    final Pokemon pokemon = pokemons![index];
                    return PokemonItem(
                      title: pokemon.name,
                      subtitle: '',
                      imageUrl: pokemon.images.large,
                      leading: pokemon.hp,
                      onClick: () => {},
                    );
                  },
                );
              } else {
                return const Progress();
              }
          }
          return const Progress();
        },
      ),
    );
  }
}
