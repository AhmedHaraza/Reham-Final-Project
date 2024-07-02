import 'package:flutter/material.dart';
import 'package:online_school_admission/core/widgets/avatar_camera.dart';
import 'package:online_school_admission/features/profile_school/page34_profile_school_page/featur/view/widget/profile_school_list.dart';

import '../../../../../../core/widgets/custom_back_icon_button.dart';

class ProfileSchoolViewBody extends StatelessWidget {
  const ProfileSchoolViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomBackIconButton(),
          Text("profile school"),
          SizedBox(
            height: 29,
          ),
          Text("Don’t worry ,only you who can see your personal data."),
          SizedBox(
            height: 45,
          ),
          AvatarCameraUser(),
          SizedBox(
            height: 71,
          ),
          ProfileSchoolList(),
          SizedBox(
            height: 45,
          ),
        ],
      ),
    );
  }
}
