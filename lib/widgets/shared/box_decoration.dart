import 'package:flutter/material.dart';

BoxDecoration boxDecoration({
  double borderRadiusCircular = 4,
  double blurRadius = 4,
  double spreadRadius = 4,
  Color colorBorder = Colors.grey,
  double widthBorder = 0.2
}) {
  return BoxDecoration(
    color: Colors.white,
    border: Border.all(
      color: colorBorder,
      width: widthBorder,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(borderRadiusCircular),
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.2),
        spreadRadius: spreadRadius,
        blurRadius: blurRadius,
        offset: const Offset(0, 2),
      ),
    ],
  );
}
