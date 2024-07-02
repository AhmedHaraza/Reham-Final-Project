import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

import '../constant/const_color.dart';

class DropDownMenuWidget extends StatelessWidget {
  const DropDownMenuWidget({
    super.key, required this.text, required this.items, required this.onSelected,
  });
  final String text;
  final List<DropdownMenuEntry<dynamic>> items;

 final void Function(dynamic) onSelected;
  @override
  Widget build(BuildContext context) {
    
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 46),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: ConstColor.kWhisper1,
                  boxShadow: [
                    BoxShadow(
                        color: ConstColor.kWhisper1,
                        offset: const Offset(1.00, 1.00),
                        blurRadius: 2.00,
                        spreadRadius: 3,
                        inset: true),
                    BoxShadow(
                        color: ConstColor.kOffWhite,
                        offset: const Offset(-6.00, -6.00),
                        blurRadius: 2.00,
                        spreadRadius: -3,
                        inset: true),
                    BoxShadow(
                        color: ConstColor.kOffWhite,
                        offset: const Offset(-6.00, -6.00),
                        blurRadius: 16.00,
                        spreadRadius: 4,
                        inset: true),
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                      colors: [
                        ConstColor.kWhisper1,
                        ConstColor.kOffWhite,
                        ConstColor.kWhisper1,
                      ],
                      stops: const [
                        0.1,
                        0.9,
                        -.9
                      ])),
              child: DropdownMenu(
                enableFilter: true,
                width: MediaQuery.of(context).size.width * 1.5 / 1.9,
                inputDecorationTheme: const InputDecorationTheme(
                  border: InputBorder.none,
                ),
                dropdownMenuEntries: items,
                onSelected: onSelected,
              ),
            ),
          ],
        ));
  }
}
