import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_back_icon_button.dart';
import '../../../../../core/widgets/title_text_and_divider.dart';
import 'button_page42.dart';
import 'dropdown_page42.dart';
import 'shadow_formfild_page42.dart';

class Page42AdmissionPageViewBody extends StatelessWidget {
  const Page42AdmissionPageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
       CustomBackIconButton(),
        TitleTextAndDivider(),
        DropdownPage42(),
        ShadowFormfildPage42(),

    ],);
  }
}