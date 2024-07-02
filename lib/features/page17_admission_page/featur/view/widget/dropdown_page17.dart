import 'package:flutter/material.dart';

import '../../../../../core/widgets/drop_down_menu_widget.dart';

class DropdownPage17 extends StatefulWidget {
  const DropdownPage17({super.key});

  @override
  State<DropdownPage17> createState() => _DropdownPage17State();
}

class _DropdownPage17State extends State<DropdownPage17> {
  List<DropdownMenuEntry<dynamic>> itemsLevel = [
   
    const DropdownMenuEntry(value: "", label: "american  division"),
    const DropdownMenuEntry(value: "", label: "British division"),
  ];
  String selectedItemLevel = "Langauge division";

  onSelectedLevel(valueLevel) {
    if (valueLevel != null) {
      setState(() {
        itemsLevel = valueLevel;
      });
    }
  }
  List<DropdownMenuEntry<dynamic>> itemsType = [
    const DropdownMenuEntry(value: "", label: "2023/2024"),
    
  ];
  List<DropdownMenuEntry<dynamic>> gradeItem = [
    const DropdownMenuEntry(value: "", label: "Prep1"),
    const DropdownMenuEntry(value: "", label: "Prep2"),
    const DropdownMenuEntry(value: "", label: "Prep3"),
    const DropdownMenuEntry(value: "", label: "Sec1"),
    const DropdownMenuEntry(value: "", label: "Sec2"),
    const DropdownMenuEntry(value: "", label: "Sec3"),
    
  ];
  String selectedItemType = "International";

  onSelectedType(valueType) {
    if (valueType != null) {
      setState(() {
        itemsType = valueType;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropDownMenuWidget(
            text: "Langauge division", items: itemsLevel, onSelected: onSelectedLevel),
        DropDownMenuWidget(
            text: "Academic Year", items: itemsType, onSelected: onSelectedType),
        DropDownMenuWidget(
            text: "Grade", items: gradeItem, onSelected: onSelectedType),
      ],
    );
  }
}
