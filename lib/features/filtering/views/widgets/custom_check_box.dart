import 'package:flutter/material.dart';
import '../../../../core/utils/app_theme_manager.dart';
import '../../../../core/utils/constants.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Checkbox(
            checkColor: Colors.white,
            activeColor: Constants.primaryColor,
            value: isClicked,
            onChanged: (value) {
              setState(() {
                isClicked = value!;
              });
            },
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          const SizedBox(
            width: 16,
          ),
          Text(
            widget.title,
            style: AppThemeManager.textStyle24,
          )
        ],
      ),
    );
  }
}
