import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';

const List<String> _list = [
  'top rated',
  'random',
];

class FilterDropdown extends StatelessWidget {
  const FilterDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomDropdown<String>(
      hintText: 'oreder by',
      items: _list,
      initialItem: _list[0],
      onChanged: (value) {},
    );
  }
}
