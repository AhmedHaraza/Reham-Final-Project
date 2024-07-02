import 'package:flutter/material.dart';

import '../constant/const_color.dart';

class AvatarCameraUser extends StatelessWidget {
  const AvatarCameraUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          minRadius: 80,
          backgroundColor: ConstColor.kLightGray,
          child: Image.asset("assets/images/Union.png"),
        ),
        const Positioned(
          left: 310,
          top: 100,
          child: Icon(Icons.camera_enhance_outlined),
        ),
      ],
    );
  }
}
