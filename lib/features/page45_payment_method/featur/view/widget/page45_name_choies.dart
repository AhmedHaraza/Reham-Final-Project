import 'package:flutter/material.dart';

class Page45NameChoies extends StatelessWidget {
  const Page45NameChoies({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
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
       const     Text("Credit/Debit Card")
          ],
        ),
      );
  }
}