import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import '../constant/const_color.dart';

class ShadowTextForm extends StatelessWidget {
  const ShadowTextForm({
    super.key,
    this.text,
    this.text1,
    this.maxLines = 1,
    this.prefixText,
    this.suffixIcon, this.hintText,
    required this.controller
  });
  final String? text;
  final String? text1;
  final String? hintText;
  final int? maxLines;
  final String? prefixText;
  final Widget? suffixIcon;

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 46),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            textAlign: TextAlign.end,
            TextSpan(text: text, children: [
              TextSpan(text: text1, style: const TextStyle(color: Colors.red))
            ]),
          ),
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
            child: TextFormField(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              expands: false,
              maxLines: maxLines,
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                prefixText: prefixText,
                suffixIcon: suffixIcon,
                isDense: false,
                contentPadding: const EdgeInsets.all(12.0),
                border: InputBorder.none
              ),
            ),
          ),
        ],
      ),
    );
  }
}
