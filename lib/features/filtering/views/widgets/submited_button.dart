import 'package:flutter/material.dart';
import 'package:online_school_admission/core/routing/extensions.dart';
import 'package:online_school_admission/core/routing/routers.dart';
import 'package:online_school_admission/core/utils/app_theme_manager.dart';
import 'package:online_school_admission/core/utils/constants.dart';

class SubmitedButton extends StatelessWidget {
  const SubmitedButton({
    super.key,
    this.textColor,
    required this.text,
  });
  final Color? textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    // var mediaQuery = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Constants.primaryColor,
            // fixedSize: Size(
            //   mediaQuery.width * 0.5,
            //   22,
            // ),
          ),
          onPressed: () {
            context.pushNamed(Routers.QuizScreen);
          },
          child: Text(
            text,
            style: AppThemeManager.textStyle20.copyWith(
              color: textColor ?? Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
