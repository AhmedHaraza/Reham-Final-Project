import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:online_school_admission/core/utils/constants.dart';
import 'package:online_school_admission/features/filtering/views/filtering_view.dart';



class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.suffixIcon,
    this.hintText,
    this.enabled,
  });
  final Widget? suffixIcon;
  final String? hintText;
  final bool? enabled;

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: () {
        if (enabled == false) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const FilteringView();
              },
            ),
          );
        }
      },
      child: Container(
        height: 45,
        padding: const EdgeInsets.only(
          right: 5,
          top: 2,
          bottom: 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffF5F5FA),
              Colors.white,
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Constants.primaryColor,
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: TextField(
          enabled: enabled,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.transparent,
            hintText: hintText ?? 'Search',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide.none,
            ),
            suffixIcon: suffixIcon,
          ),
        ),
      ),
    );
  }
}
