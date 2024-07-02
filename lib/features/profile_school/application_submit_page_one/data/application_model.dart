import 'package:flutter/material.dart';

class ApplicationModel {
  final String image;
  final String text;
  final IconData iconData;
  final  Function() onTap;
  ApplicationModel(  {
    this.image = "assets/images/Vector 1.png",
    required this.text,
    this.iconData = Icons.arrow_forward_ios,
   required this.onTap
  });
}
