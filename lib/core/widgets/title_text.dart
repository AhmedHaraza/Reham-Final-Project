import 'package:flutter/material.dart';

import '../constant/const_textstyle.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, this.text="Payment Method"});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: ConstTextStyle.k24RegularRoyalsemiBlue,
    );
  }
}
