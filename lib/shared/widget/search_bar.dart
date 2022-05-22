import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final String hintText;
  final Function onSearch;
  final Function onClear;

  const SearchBar({
    Key? key,
    required this.hintText,
    required this.onSearch,
    required this.onClear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return SizedBox(
      child: TextField(
        controller: controller,
        textAlignVertical: TextAlignVertical.center,
        cursorWidth: 0,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
            iconColor: Colors.white,
            filled: true,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.white),
            prefixIcon: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                onSearch(controller.text);                
              },
              color: Colors.white,
            ),
            suffixIcon: IconButton(
              icon: const Icon(Icons.close),
              color: Colors.white,
              onPressed: () {
                controller.clear();
                onClear;
              },
            ),
            border: InputBorder.none),
      ),
    );
  }
}
