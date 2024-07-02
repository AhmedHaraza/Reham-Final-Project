import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import '../../../../core/utils/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.widget,
  });
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: () {
        Navigator.pop(context);
      },
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Constants.primaryColor,
              ),
            ),
            child: const Icon(
              Icons.arrow_back,
              size: 33,
            ),
          ),
        ],
      ),
    );
  }
}
