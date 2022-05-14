import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Function onSearch;
  final Function onClear;

  const SearchBar({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.onSearch,
    required this.onClear,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        controller: controller,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          filled: true,
          hintText: hintText,
          prefixIcon: IconButton(
              icon: const Icon(Icons.search), onPressed: () => onSearch),
          suffixIcon: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              controller.clear();
              onClear;
            },
          ),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(2.0))),
        ),
      ),
    );
  }
}
