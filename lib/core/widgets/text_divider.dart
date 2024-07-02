import 'package:flutter/material.dart';

import '../constant/const_color.dart';

class TextDivider extends StatelessWidget {
  const TextDivider({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Divider(
            thickness: 10,
            color: ConstColor.kCobaltBlue,
            indent: 10,
            endIndent: 100,
          ),
          Text(text),
          const Divider(
            thickness: 10,
            color: Colors.blue,
            indent: 10,
            endIndent: 100,
          ),
        ],
      ),
    );
  }
}
