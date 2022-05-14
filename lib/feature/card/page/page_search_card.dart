import 'package:flutter/material.dart';
import 'package:pokemon_tcg_deck/shared/widget/search_bar.dart';

class PageSearchCard extends StatelessWidget {
  const PageSearchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Pokémon Card'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SearchBar(
            controller: TextEditingController(),
            hintText: 'Search pokémon card',
            onSearch: () => {},
            onClear: () => {},
          ),
        ],
      )),
    );
  }
}
