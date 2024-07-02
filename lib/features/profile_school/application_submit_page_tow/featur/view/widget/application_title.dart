import 'package:flutter/material.dart';
import '../../../../../../core/constant/const_textstyle.dart';

class ApplicationTitle extends StatelessWidget {
  const ApplicationTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Image.asset("assets/images/image 18.png"),
      Text("Application Submit",style:ConstTextStyle.k32Regularunderline),
    ],);
  }
}