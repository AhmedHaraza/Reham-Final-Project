import 'package:flutter/material.dart';

import '../constant/const_color.dart';

class AvatarUser extends StatelessWidget {
  const AvatarUser({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
          minRadius: 50,
          backgroundColor: ConstColor.kLightGray,
          child: Image.asset("assets/images/Union.png",height: 40,),
        );
  }
}