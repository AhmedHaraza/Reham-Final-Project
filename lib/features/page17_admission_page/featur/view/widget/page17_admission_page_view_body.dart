import 'package:flutter/material.dart';
import 'package:online_school_admission/features/page17_admission_page/featur/view/widget/button_page17.dart';
import '../../../../../core/widgets/custom_back_icon_button.dart';
import '../../../../../core/widgets/title_text_and_divider.dart';
import 'dropdown_page17.dart';
import 'shadow_formfild_page17.dart';

class Page17AdmissionPageViewBody extends StatelessWidget {
  const Page17AdmissionPageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CustomBackIconButton(),
        TitleTextAndDivider(),
        DropdownPage17(),
        ShadowFormfildPage17(),
        ButtonPage17()
      ],
    );
  }
}
