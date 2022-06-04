import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  final String text;

  const NotFound({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.search,
            size: 40,
            color: Colors.blue,
          ),
          Text(text),
        ],
      ),
    );
  }
}
