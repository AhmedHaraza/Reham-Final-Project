import 'package:flutter/material.dart';

import '../../../../../core/widgets/drop_down_menu_widget.dart';

class DropdownPage44 extends StatefulWidget {
  const DropdownPage44({super.key});

  @override
  State<DropdownPage44> createState() => _DropdownPage44State();
}

class _DropdownPage44State extends State<DropdownPage44> {
  List<DropdownMenuEntry<dynamic>> chooseItems1 = [
    const DropdownMenuEntry(value: "", label: "35"),
    const DropdownMenuEntry(value: "", label: "34"),
    const DropdownMenuEntry(value: "", label: "33"),
    const DropdownMenuEntry(value: "", label: "32"),
  ];
  String selectedItemLevel1 = "35";

  onSelectedLevel1(valueLevel) {
    if (valueLevel != null) {
      setState(() {
        chooseItems1 = valueLevel;
      });
    }
  }

  List<DropdownMenuEntry<dynamic>> chooseItems2 = [
    const DropdownMenuEntry(value: "", label: "Drawing "),
    const DropdownMenuEntry(value: "", label: "Writing "),
    const DropdownMenuEntry(value: "", label: "Eating "),
    const DropdownMenuEntry(value: "", label: "Stirring "),
  ];
  String selectedItemType2 = "Drawing";

  onSelectedType2(valueType) {
    if (valueType != null) {
      setState(() {
        chooseItems2 = valueType;
      });
    }
  }

  List<DropdownMenuEntry<dynamic>> selectedItemType3 = [
    const DropdownMenuEntry(value: "", label: "1"),
    const DropdownMenuEntry(value: "", label: "2"),
    const DropdownMenuEntry(value: "", label: "4"),
    const DropdownMenuEntry(value: "", label: "0.25"),
  ];
  String genderItemType3 = "1";

  onSelected3(valueType) {
    if (valueType != null) {
      setState(() {
        selectedItemType3 = valueType;
      });
    }
  }

  List<DropdownMenuEntry<dynamic>> selectedItemType4 = [
    const DropdownMenuEntry(value: "", label: "Fish"),
    const DropdownMenuEntry(value: "", label: "Vehicle  "),
    const DropdownMenuEntry(value: "", label: "River"),
    const DropdownMenuEntry(value: "", label: "Planet"),
  ];
  String genderItemType4 = "Fish";

  onSelected4(valueType) {
    if (valueType != null) {
      setState(() {
        selectedItemType4 = valueType;
      });
    }
  }

  List<DropdownMenuEntry<dynamic>> selectedItemType5 = [
    const DropdownMenuEntry(value: "", label: "1"),
    const DropdownMenuEntry(value: "", label: "2"),
    const DropdownMenuEntry(value: "", label: "4"),
    const DropdownMenuEntry(value: "", label: "0.25"),
  ];
  String genderItemType5 = "1";

  onSelected5(valueType) {
    if (valueType != null) {
      setState(() {
        selectedItemType5 = valueType;
      });
    }
  }

    List<DropdownMenuEntry<dynamic>> selectedItemType6 = [
    const DropdownMenuEntry(value: "", label: "Fish"),
    const DropdownMenuEntry(value: "", label: "Vehicle  "),
    const DropdownMenuEntry(value: "", label: "River"),
    const DropdownMenuEntry(value: "", label: "Planet"),
  ];
  String genderItemType6 = "Fish";

  onSelected6(valueType) {
    if (valueType != null) {
      setState(() {
        selectedItemType6 = valueType;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
            "Which number should come next in the pattern \n38 – 41 – 44 – 47 (After 38 ?"),
            const SizedBox(height: 30,),
        DropDownMenuWidget(
            text: " Choose", items: chooseItems1, onSelected: onSelectedLevel1),
              const SizedBox(height: 30,),
        const Text("Book is to reading, as the fork is to ?"),
        DropDownMenuWidget(
            text: "Choose", items: chooseItems2, onSelected: onSelectedType2),
              const SizedBox(height: 30,),
        const Text("What number is quarter of one of tenth of one fifth of 200 ?"),
        DropDownMenuWidget(
            text: "Choose", items: selectedItemType3, onSelected: onSelected3),
              const SizedBox(height: 30,),
        const Text(
            "If you rearrange the letters of (ahret), \n you would have the name of a ?"),
        DropDownMenuWidget(
            text: "Choose", items: selectedItemType4, onSelected: onSelected4),
              const SizedBox(height: 30,),
                    const Text("What number is quarter of one of tenth of one fifth of 200 ?"),
        DropDownMenuWidget(
            text: "Choose", items: selectedItemType5, onSelected: onSelected5),
              const SizedBox(height: 30,),
              const Text(
            "If you rearrange the letters of (ahret), \n you would have the name of a ?"),
        DropDownMenuWidget(
            text: "Choose", items: selectedItemType6, onSelected: onSelected6),
      ],
    );
  }
}
