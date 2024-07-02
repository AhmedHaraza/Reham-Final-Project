import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../core/constant/const_textstyle.dart';

class Page22checkbox extends StatelessWidget {
  const Page22checkbox({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Boxchik> box = [];
    for (int i = 0; i < 5; i++) {
      box.add(Boxchik(text: "Sunday         15/8      09:00 AM"));
    }

    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: box
            .map((e) => CheckBoxList(
                  boxchik: e,
                ))
            .toList(),
      ),
    );
  }
}

class Boxchik {
  final String text;

  Boxchik({required this.text});
}

class CheckBoxList extends StatelessWidget {
  const CheckBoxList({super.key, required this.boxchik});
  final Boxchik boxchik;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Row(
        children: [
          Container(
            height: 21,
            width: 21,
            decoration: BoxDecoration(border: Border.all()),
          ),
          const SizedBox(
            width: 50,
          ),
          Text(
            boxchik.text,
            style: ConstTextStyle.k15Regular,
          )
        ],
      ),
    );
  }
}
