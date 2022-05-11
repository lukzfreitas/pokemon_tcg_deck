import 'package:flutter/material.dart';

BoxDecoration boxDecoration() {
  return BoxDecoration(
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
    ],
  );
}
