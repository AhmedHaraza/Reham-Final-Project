import 'package:flutter/material.dart';
import '../constant/const_color.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.backgroundColor,
    required this.minimumSize,
    required this.style,
  });
  final String text;
  final void Function() onPressed;
  final Color backgroundColor;
  final Size minimumSize;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: minimumSize,
        backgroundColor: backgroundColor,
        elevation: 10,
        shadowColor: ConstColor.kOffWhite.withOpacity(.5),
      ),
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
