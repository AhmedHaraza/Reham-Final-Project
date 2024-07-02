import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'const_color.dart';

abstract class ConstTextStyle {
  static final TextStyle k40Bold =
      TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold);
  static final TextStyle k20Bold =
      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold);
  static final TextStyle k28Bold =
      TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold);
  static final TextStyle k13Bold =
      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold);
  static final TextStyle k36regularRoyalBlue = TextStyle(
      fontSize: 36.sp,
      fontWeight: FontWeight.w400,
      color: ConstColor.kRoyalBlue);
  static final TextStyle k14SimiBoldRoyalBlue = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeight.w600,
      color: ConstColor.kRoyalBlue);
  static final TextStyle k28BoldRoyalBlue = TextStyle(
      fontSize: 28.sp,
      fontWeight: FontWeight.bold,
      color: ConstColor.kRoyalBlue);
  static final TextStyle k16RegularRoyalBlue = TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
      color: ConstColor.kMediumRoyalBlue);
  static final TextStyle k24RegularRoyalsemiBlue = TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
      color: ConstColor.kMediumRoyalBlue);
  static final TextStyle k20Regular = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle k24SimiBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle k16Regular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle k32Regularunderline = const TextStyle(
      decoration: TextDecoration.underline,
      fontSize: 32,
      fontWeight: FontWeight.w400);
  static final TextStyle k24Regular = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle k24Regularunderline = const TextStyle(
      decoration: TextDecoration.underline,
      fontSize: 32,
      fontWeight: FontWeight.w400);
  static TextStyle k22Regular =
      const TextStyle(fontSize: 22, fontWeight: FontWeight.w400);
  static TextStyle k20RegularkSlightBlueHue =
       TextStyle(fontSize: 22, fontWeight: FontWeight.w400,color: ConstColor.kSlightBlueHue);
  static TextStyle k15RegularkDarkRed =
       TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: ConstColor.kDarkRed);
  static TextStyle k15Regular =
     const  TextStyle(fontSize: 15, fontWeight: FontWeight.w400,);
}
