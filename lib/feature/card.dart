import 'package:flutter/material.dart';

class PokemonCard extends StatelessWidget {
  final String name;
  final String level;
  final String hp;
  final double height;
  final double width;
  final String imageCardUrl;
  final String imageLogoUrl;

  const PokemonCard({
    Key? key,
    required this.name,
    required this.level,
    required this.hp,
    required this.height,
    required this.width,
    required this.imageCardUrl,
    required this.imageLogoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => body(context);

  Widget body(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
            width: 0.2,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 4,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ]),
      child: Column(
        children: [header(context), image(context), description(context)],
      ),
    );
  }

  Widget header(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: name,
                  style: const TextStyle(fontSize: 20),
                ),
                TextSpan(
                  text: '  Level $level',
                  style: const TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'HP $hp',
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }

  Widget image(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Image.network(imageCardUrl),
    );
  }

  description(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.bottomStart,
      margin: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 16,
      ),
      child: Column(
        children: [
          RichText(
            text: const TextSpan(
              text: 'Fury Blaze',
              style: TextStyle(fontSize: 20),
            ),
          ),
          RichText(
            text: const TextSpan(
              text: 'If your opponent has 3 or less Prize cards left, each of Charizards attacks does 50 more damage to the Active Pokémon (before applying Weakness and Resistance).',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
