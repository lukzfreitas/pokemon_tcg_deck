import 'package:flutter/material.dart';
import 'package:pokemon_tcg_deck/widgets/shared/box_decoration.dart';


class PokemonItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final String leading;
  final Function onClick;

  const PokemonItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.leading,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: boxDecoration(),
      child: ExpansionTile(
        title: Text(title),
        subtitle: Text('evolves from $subtitle'),
        leading: Text(leading),
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: InkWell(
              onTap: () => onClick,
              child: Image.network(imageUrl),
            ),
          )
        ],
      ),
    );
  }
}
