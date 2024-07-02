import 'package:flutter/material.dart';

import '../constant/const_color.dart';

class CircleLogo extends StatelessWidget {
  const CircleLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      minRadius: MediaQuery.of(context).size.width * 1.5 / 15,
      backgroundColor: ConstColor.kAliceblue,
      child: Image.asset("assets/images/logo.png"),
    );
  }
}