import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_tcg_deck/controllers/card/search_cubit.dart';
import 'package:pokemon_tcg_deck/models/card/pokemon.dart';
import 'package:pokemon_tcg_deck/services/response_pokemon.dart';
import 'package:pokemon_tcg_deck/services/webclients/card_webclient.dart';
import 'package:pokemon_tcg_deck/widgets/card/pokemon_item.dart';
import 'package:pokemon_tcg_deck/widgets/shared/not_found.dart';
import 'package:pokemon_tcg_deck/widgets/shared/progress.dart';
import 'package:pokemon_tcg_deck/widgets/shared/search_bar.dart';

class PageSearchCard extends StatelessWidget {
  PageSearchCard({Key? key}) : super(key: key);

  final CardWebClient _webClient = CardWebClient();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(
          hintText: 'Search pokémon card',
          onSearch: (value) => context.read<SearchCubit>().changeSearch(value),
          onClear: () => {},
        ),
      ),
      body: BlocBuilder<SearchCubit, String>(builder: (context, state) {
        if (state.isEmpty) {
          return const NotFound(text: 'Search for pokemon card');
        }
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
