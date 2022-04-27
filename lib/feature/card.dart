import 'package:flutter/material.dart';

class PokemonCard extends StatelessWidget {
  final String name;
  final double height;
  final double width;
  final String imageUrl;

  const PokemonCard({
    Key? key,
    required this.name,
    required this.height,
    required this.width,
    required this.imageUrl,
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
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ]),
      child: Column(
        children: [
          header(context),
          image(context)          
        ],
      ),
    );
  }

  Widget header(BuildContext context) {
    return Text(name);
  }

  Widget image(BuildContext context) {
    return SizedBox(
      height: 194,
      width: width,
      child: Image.network(imageUrl),
    );
  }
}
