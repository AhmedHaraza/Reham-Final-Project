import 'package:flutter/material.dart';

import '../../../../../core/widgets/drop_down_menu_widget.dart';

class DropdownPage42 extends StatefulWidget {
  const DropdownPage42({super.key});

  @override
  State<DropdownPage42> createState() => _DropdownPage42State();
}

class _DropdownPage42State extends State<DropdownPage42> {
  List<DropdownMenuEntry<dynamic>> religionItems = [
    const DropdownMenuEntry(value: "", label: "Muslim"),
    const DropdownMenuEntry(value: "", label: "Cristion"),
  ];
  String selectedItemLevel = "Muslim";

  onSelectedLevel(valueLevel) {
    if (valueLevel != null) {
      setState(() {
        religionItems = valueLevel;
      });
    }
  }

  List<DropdownMenuEntry<dynamic>> doseChildtem = [
    const DropdownMenuEntry(value: "", label: "Yes"),
    const DropdownMenuEntry(value: "", label: "No"),
  ];
  String selectedItemType =
      "Yes";

  onSelectedType(valueType) {
    if (valueType != null) {
      setState(() {
        doseChildtem = valueType;
      });
    }
  }
  List<DropdownMenuEntry<dynamic>> genderItem = [
    const DropdownMenuEntry(value: "", label: "Female"),
    const DropdownMenuEntry(value: "", label: "Male"),
  ];
  String genderItemType =
      "Female";

  onSelectedGender(valueType) {
    if (valueType != null) {
      setState(() {
        genderItem = valueType;
      });
    }
  }
  List<DropdownMenuEntry<dynamic>> nationalityItem = [
    const DropdownMenuEntry(value: "", label: "Egypt"),
    const DropdownMenuEntry(value: "", label: "Foreign"),
  ];
  String nationalityItemType =
      "Egypt";

  onSelectedNationality(valueType) {
    if (valueType != null) {
      setState(() {
        genderItem = valueType;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

      ],
    );
  }
}
