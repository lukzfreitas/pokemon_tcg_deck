import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          children: const [
            Text('teste'),
            Text('teste'),
          ],
        )),
    );
  }
}
