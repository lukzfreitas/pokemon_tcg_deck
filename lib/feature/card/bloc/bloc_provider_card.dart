import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_tcg_deck/feature/card/bloc/search_cubit.dart';
import 'package:pokemon_tcg_deck/feature/card/page/page_search_card.dart';

class BlocProviderCard extends StatelessWidget {
  const BlocProviderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SearchCubit('Charizard'),
      child: PageSearchCard(),
    );
  }
}
