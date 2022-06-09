import 'package:flutter/material.dart';
import 'package:pokemon_tcg_deck/widgets/shared/box_decoration.dart';

class MenuItemTCG extends StatelessWidget {
  final String title;
  final double height;
  final Function onClick;

  const MenuItemTCG({
    Key? key,
    required this.onClick,
    required this.title,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => onClick(),
        child: Container(
          height: height,
          width: MediaQuery.of(context).size.width,
          decoration: boxDecoration(
            borderRadiusCircular: 10,
            colorBorder: Colors.green,
            widthBorder: 2,
          ),
          alignment: Alignment.center,
          child: Text(
            title,
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
