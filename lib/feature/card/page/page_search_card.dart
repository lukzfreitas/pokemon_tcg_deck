import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_tcg_deck/feature/card/bloc/search_cubit.dart';
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
          hintText: 'Search pokémon card',
          onSearch: (value) => context.read<SearchCubit>().changeSeach(value),
          onClear: () => {},
        ),
      ),
      body: BlocBuilder<SearchCubit, String>(builder: (context, state) {
        return FutureBuilder<ResponsePokemon>(
          future: _webClient.find(state),
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
                        key: Key(pokemon.id),
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
        );
      }),
    );
  }
}
