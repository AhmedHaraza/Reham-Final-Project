import 'package:flutter/material.dart';
import 'package:online_school_admission/core/utils/constants.dart';


class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, this.backgroundColor, this.iconColor});
  final Color? backgroundColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor ?? Constants.primaryColor,
      child: Icon(
        Icons.search_outlined,
        color: iconColor ?? Colors.white,
      ),
    );
  }
}
