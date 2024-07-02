import 'package:flutter/material.dart';

import '../constant/const_textstyle.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "Skip",
          style: ConstTextStyle.k14SimiBoldRoyalBlue,
          textAlign: TextAlign.end,
        ),
      ],
    );
  }
}
