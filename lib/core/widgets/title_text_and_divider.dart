import 'package:flutter/material.dart';

import '../constant/const_textstyle.dart';

class TitleTextAndDivider extends StatelessWidget {
  const TitleTextAndDivider({
    super.key, this.text="Admission Page",
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: ConstTextStyle.k24RegularRoyalsemiBlue,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 90),
          child: Divider(
            thickness: 2.5,
          ),
        ),
      ],
    );
  }
}
