import 'package:flutter/material.dart';

import '../../../data/page26_model.dart';

class ChoiseItem extends StatelessWidget {
  const ChoiseItem({super.key, required this.page26model});
  final Page26Model page26model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: page26model.onTap,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Container(
              height: 10,
              width: 10,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(page26model.text)
          ],
        ),
      ),
    );
  }
}
