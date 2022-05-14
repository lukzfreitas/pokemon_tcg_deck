import 'package:flutter/material.dart';

class PageListCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const PageListCard({Key? key, required this.title, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(title),
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Image.network(imageUrl),
        )
      ],
    );
  }
}
