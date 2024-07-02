import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_school_admission/core/routing/extensions.dart';
import '../../../../../core/constant/const_color.dart';
import '../../../../../core/constant/const_textstyle.dart';
import '../../../../../core/routing/routers.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';

class Page46Button extends StatelessWidget {
  const Page46Button({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      text: "Confirm",
      style: ConstTextStyle.k16Regular,
      backgroundColor: ConstColor.kCobaltBlue,
      minimumSize: Size(156.w, 50.h),
      onPressed: () => context.pushNamed(Routers.page21PaymentSuccessful),
    );
  }
}
