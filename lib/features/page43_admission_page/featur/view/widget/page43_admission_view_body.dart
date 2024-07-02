import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_back_icon_button.dart';
import '../../../../../core/widgets/title_text_and_divider.dart';
import 'button_page43.dart';
import 'shadow_formfild_page43.dart';

class Page43AdmissionViewBody extends StatelessWidget {
  const Page43AdmissionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(children: const [  CustomBackIconButton(),
        TitleTextAndDivider(),
        ShadowFormfildPage43(),
        ButtonPage43()],);
  }
}