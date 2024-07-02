import 'package:flutter/material.dart';
import '../../../../../core/widgets/text_filed_with_color_whisoer.dart';

class Page46Formes extends StatelessWidget {
  const Page46Formes({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 51),
      child: TextFiledWithColorWhisoer(hintText: "Mobile number",),
    );
  }
}