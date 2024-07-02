import 'package:flutter/material.dart';
import 'package:online_school_admission/features/profile_school/page34_profile_school_page/data/profile_school_model.dart';

class ProfileSchoolItem extends StatelessWidget {
  const ProfileSchoolItem({super.key, required this.profileSchoolModel});
  final ProfileSchoolModel profileSchoolModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: profileSchoolModel.onTap,
      child: Row(
        children: [
          const SizedBox(
            width: 5,
          ),
          Image.asset(
            profileSchoolModel.image,
            height: 40,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(profileSchoolModel.title)
        ],
      ),
    );
  }
}
