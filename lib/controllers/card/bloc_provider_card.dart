import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_tcg_deck/controllers/card/search_cubit.dart';
import 'package:pokemon_tcg_deck/screens/card/page_search_card.dart';

class BlocProviderCard extends StatelessWidget {
  const BlocProviderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SearchCubit(''),
      child: PageSearchCard(),
    );
  }
}
