import 'package:flutter/material.dart';

class DropdownWidget extends StatelessWidget {
  const DropdownWidget(
      {super.key,
      required this.text,
      required this.items,
      required this.onSelected});
  final String text;
  final List<DropdownMenuEntry<dynamic>> items;
  final void Function(dynamic) onSelected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: DropdownMenu(label: Text(text),
        enableFilter: true,
      
        inputDecorationTheme: const InputDecorationTheme(
          border: InputBorder.none,
        ),
        dropdownMenuEntries: items,
        onSelected: onSelected,
      ),
    );
  }
}
