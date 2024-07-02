import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_school_admission/core/routing/extensions.dart';

import '../../../../../core/constant/const_color.dart';
import '../../../../../core/constant/const_textstyle.dart';
import '../../../../../core/routing/routers.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';

class ButtonPage21 extends StatelessWidget {
  const ButtonPage21({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 32),
      child: CustomElevatedButton(
      text: "Done",
      style: ConstTextStyle.k16Regular,
      backgroundColor: ConstColor.kCobaltBlue,
      minimumSize: Size(156.w, 50.h),
      onPressed: () =>
         context.pushNamed(Routers.page22BookingInterview),
            ),
    );
  }
}